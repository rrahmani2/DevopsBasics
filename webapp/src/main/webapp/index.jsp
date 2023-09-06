<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Advanced Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        #calculator {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        #equation {
            width: 100%;
            padding: 10px;
            font-size: 20px;
            margin-bottom: 10px;
        }
        #canvas {
            width: 100%;
            max-height: 200px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <div id="calculator">
        <h1>Advanced Calculator</h1>
        <input type="text" id="equation" placeholder="Enter equation (e.g., x^2 + 2x + 1)">
        <button onclick="calculate()">Calculate</button>
        <canvas id="canvas"></canvas>
        <div id="results"></div>
    </div>

    <script>
        const canvas = document.getElementById("canvas");
        const ctx = canvas.getContext("2d");

        function calculate() {
            const equationInput = document.getElementById("equation");
            const equationString = equationInput.value;

            try {
                const f = new Function("x", `return ${equationString};`);

                // Clear canvas
                ctx.clearRect(0, 0, canvas.width, canvas.height);

                // Draw the equation
                ctx.beginPath();
                ctx.moveTo(0, canvas.height / 2);

                for (let x = 0; x <= canvas.width; x++) {
                    const y = f(x - canvas.width / 2);
                    ctx.lineTo(x, canvas.height / 2 - y);
                }

                ctx.stroke();

                // Calculate results
                const xValues = [];
                const yValues = [];

                for (let x = 0; x <= canvas.width; x++) {
                    const y = f(x - canvas.width / 2);
                    xValues.push(x - canvas.width / 2);
                    yValues.push(y);
                }

                const maxIndex = yValues.indexOf(Math.max(...yValues));
                const minIndex = yValues.indexOf(Math.min(...yValues));
                const maxX = xValues[maxIndex];
                const maxY = yValues[maxIndex];
                const minX = xValues[minIndex];
                const minY = yValues[minIndex];

                document.getElementById("results").innerHTML = `
                    Max: (${maxX}, ${maxY.toFixed(2)}),
                    Min: (${minX}, ${minY.toFixed(2)})
                `;
            } catch (error) {
                document.getElementById("results").innerHTML = "Invalid equation.";
            }
        }
    </script>
</body>
</html>
