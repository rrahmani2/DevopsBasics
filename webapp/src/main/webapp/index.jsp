<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Engineering Calculator</title>
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
        }
        h1 {
            color: #3498db;
        }
        #calculator {
            width: 300px;
            margin: 0 auto;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            font-size: 18px;
            margin-bottom: 10px;
        }
        input[type="button"] {
            width: 48%;
            padding: 10px;
            font-size: 18px;
            margin-right: 2%;
            margin-bottom: 10px;
            background-color: #3498db;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        input[type="button"]:last-child {
            margin-right: 0;
        }
    </style>
</head>
<body>
    <h1>Engineering Calculator</h1>
    <div id="calculator">
        <input type="text" id="display" readonly>
        <br>
        <input type="button" value="7" onclick="appendToDisplay('7')">
        <input type="button" value="8" onclick="appendToDisplay('8')">
        <input type="button" value="9" onclick="appendToDisplay('9')">
        <input type="button" value="+" onclick="appendToDisplay('+')">
        <br>
        <input type="button" value="4" onclick="appendToDisplay('4')">
        <input type="button" value="5" onclick="appendToDisplay('5')">
        <input type="button" value="6" onclick="appendToDisplay('6')">
        <input type="button" value="-" onclick="appendToDisplay('-')">
        <br>
        <input type="button" value="1" onclick="appendToDisplay('1')">
        <input type="button" value="2" onclick="appendToDisplay('2')">
        <input type="button" value="3" onclick="appendToDisplay('3')">
        <input type="button" value="*" onclick="appendToDisplay('*')">
        <br>
        <input type="button" value="0" onclick="appendToDisplay('0')">
        <input type="button" value="C" onclick="clearDisplay()">
        <input type="button" value="=" onclick="calculate()">
        <input type="button" value="/" onclick="appendToDisplay('/')">
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
