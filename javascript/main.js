function calculateCheckDigit(number, digits = 1) {
  const digitList = Array.from(number, (digit) => parseInt(digit, 10));
  const checkDigits = [];

  for (let i = 0; i < digits; i++) {
    let total = 0;
    let weight = 2;

    for (let j = digitList.length - 1; j >= 0; j--) {
      total += digitList[j] * weight;
      weight++;
    }

    const checkDigit = 11 - (total % 11);
    checkDigits.push(checkDigit);
    digitList.push(checkDigit);
  }

  return checkDigits;
}

const cpf = "426240878";
const cpfCheckDigits = calculateCheckDigit(cpf, 2);
const formattedCpf = `${cpf}-${cpfCheckDigits[0]}${cpfCheckDigits[1]}`;
console.log(formattedCpf);

