from lxml import etree
import xmlschema


schema = xmlschema.XMLSchema('D:\christ\wsd1\lab5\employee_schema.xsd')

xml_tree = etree.parse('D:\christ\wsd1\lab5\employee.xml')

if schema.is_valid(xml_tree):
    print("XML data is valid according to the schema.")
    
    xslt_tree = etree.parse('D:\christ\wsd1\lab5\employee_transform.xsl')
    
    transformer = etree.XSLT(xslt_tree)
    result_tree = transformer(xml_tree)
    
    with open('D:\christ\wsd1\lab5\output.html', 'wb') as output_file:
        output_file.write(result_tree)
    
    print("HTML output saved to 'output.html'.")
else:
    print("XML data is not valid according to the schema.")