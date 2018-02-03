def on_hbp(event, context):
    name = event['name']
    print("High blood pressure detected. Take care {}!".format(name))
