my_dict = {
    'payment_method': ['credit_card', 'cash'],
    'is_cashless': [True, False]
}

my_dict0 = {
    'is_cashless': [True, False],
    'payment_method': ['credit_card', 'cash']
    
}

for column_name, results in my_dict.items():
    print(column_name)
    print(results)
    
    
print(my_dict['payment_method'])