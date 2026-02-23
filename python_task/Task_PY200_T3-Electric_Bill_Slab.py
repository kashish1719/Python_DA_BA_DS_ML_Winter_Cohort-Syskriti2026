bill_unit = int(input("Enter Unit used: "))
total_bill = 0

if bill_unit > 0:
    if bill_unit <=100:
        total_bill = bill_unit * 2
    elif bill_unit <= 200:
        total_bill = (100 * 2) + (bill_unit - 100) * 3
    elif bill_unit <= 500:
        total_bill = (100 * 2) + (100 * 3) + (bill_unit - 200) * 5
    else:
        total_bill = (100 * 2) + (100 * 3) + (300 * 5) + (bill_unit - 500) * 8
    
    total_bill = total_bill + 50

    print("Total Electricity bill: " ,total_bill)
