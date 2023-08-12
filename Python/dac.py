def calculate_check_digit(number, digits=1):
    # Convert the number to a list of digits
    digit_list = [int(digit) for digit in number]
    check_digits = []  # List to store calculated check digits

    for _ in range(digits):
        total = 0
        weight = 2
        # Calculate the weighted sum of digits in reverse order
        for digit in reversed(digit_list):
            total += digit * weight
            weight += 1
        # Calculate the check digit based on the total
        check_digit = (11 - total % 11)
        check_digits.append(check_digit)  # Store the check digit
        digit_list.append(check_digit)    # Add the check digit to the list

    return check_digits  # Return the list of calculated check digits

# Examples
cpf = "426240878"
cpf_check_digits = calculate_check_digit(cpf, digits=2)
formatted_cpf = f"{cpf}-{cpf_check_digits[0]}{cpf_check_digits[1]}"
print(formatted_cpf)
