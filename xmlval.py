import xmlschema as xml


XML_SCHEMA = xml.XMLSchema("D:\christ\wsd\emp_schema.xsd")

if XML_SCHEMA.is_valid("D:\christ\wsd\employees.xml"):
    print("The xml is vaild")
else:
    print("Sorry, xml is not well formed or valid")