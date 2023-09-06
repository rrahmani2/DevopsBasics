<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guess the Number</title>
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
        }
        h1 {
            color: #3498db;
        }
        #output {
            font-size: 24px;
            margin: 20px;
        }
        #guess {
            padding: 5px;
            font-size: 18px;
        }
        #submit {
            padding: 5px 10px;
            font-size: 18px;
            background-color: #3498db;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Guess the Number Game</h1>
    <p>Guess a number between 1 and 100:</p>
    <input type="number" id="guess" min="1" max="100">
    <button id="submit">Submit</button>
    <p id="output"></p>

    <script>
        // Generate a random number between 1 and 100
        const randomNumber = Math.floor(Math.random() * 100) + 1;
        let attempts = 0;

        document.getElementById("submit").addEventListener("click", function() {
            const userGuess = parseInt(document.getElementById("guess").value);
            attempts++;

            if (userGuess === randomNumber) {
                document.getElementById("output").innerHTML = `Congratulations! You guessed the number ${randomNumber} in ${attempts} attempts.`;
                document.getElementById("submit").disabled = true;
            } else if (userGuess < randomNumber) {
                document.getElementById("output").innerHTML = "Try a higher number.";
            } else {
                document.getElementById("output").innerHTML = "Try a lower number.";
            }
        });
    </script>
</body>
</html>
