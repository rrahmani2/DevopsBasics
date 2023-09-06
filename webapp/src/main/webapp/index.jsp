<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Engineering Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        #calculator {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            max-width: 300px;
        }

        h1 {
            color: #3498db;
            text-align: center;
        }

        #display {
            width: 100%;
            padding: 10px;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .calculator-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 10px;
        }

        .calculator-button {
            width: 100%;
            padding: 15px;
            font-size: 18px;
            background-color: #3498db;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .calculator-button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div id="calculator">
        <h1>Engineering Calculator</h1>
        <input type="text" id="display" readonly class="calculator-grid">
        <div class="calculator-grid">
            <button class="calculator-button" onclick="appendToDisplay('7')">7</button>
            <button class="calculator-button" onclick="appendToDisplay('8')">8</button>
            <button class="calculator-button" onclick="appendToDisplay('9')">9</button>
            <button class="calculator-button" onclick="appendToDisplay('+')">+</button>

            <button class="calculator-button" onclick="appendToDisplay('4')">4</button>
            <button class="calculator-button" onclick="appendToDisplay('5')">5</button>
            <button class="calculator-button" onclick="appendToDisplay('6')">6</button>
            <button class="calculator-button" onclick="appendToDisplay('-')">-</button>

            <button class="calculator-button" onclick="appendToDisplay('1')">1</button>
            <button class="calculator-button" onclick="appendToDisplay('2')">2</button>
            <button class="calculator-button" onclick="appendToDisplay('3')">3</button>
            <button class="calculator-button" onclick="appendToDisplay('*')">*</button>

            <button class="calculator-button" onclick="appendToDisplay('0')">0</button>
            <button class="calculator-button" onclick="clearDisplay()">C</button>
            <button class="calculator-button" onclick="calculate()">=</button>
            <button class="calculator-button" onclick="appendToDisplay('/')">/</button>
        </div>
    </div>

    <script>
        function appendToDisplay(value) {
            document.getElementById('display').value += value;
        }

        function clearDisplay() {
            document.getElementById('display').value = '';
        }

        function calculate() {
            const displayValue = document.getElementById('display').value;
            try {
                const result = eval(displayValue);
                document.getElementById('display').value = result;
            } catch (error) {
                document.getElementById('display').value = 'Error';
            }
        }
    </script>
</body>
</html>
