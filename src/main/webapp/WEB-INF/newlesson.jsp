Standard Actions in JSP
In this chapter, we will discuss Actions in JSP. These actions use constructs in XML syntax
to control the behavior of the servlet engine. You can dynamically insert a file, reuse JavaBeans components,
forward the user to another page, or generate HTML for the Java plugin.

There is only one syntax for the Action element, as it conforms to the XML standard −

<jsp:action_name attribute = "value" />

#1 include
This action lets you insert files into the page being generated. The syntax looks like this −

<jsp:include page = "relative URL" flush = "true" />
example:-
<jsp:include page = "date.jsp" flush = "true" />

#2. The <jsp:useBean> Action
    The useBean action is quite versatile. It first searches for an existing object utilizing the id and scope
    variables. If an object is not found, it then tries to create the specified object.

    The simplest way to load a bean is as follows −

    <jsp:useBean id = "name" class = "package.class" scope="page" />

#3. The <jsp:setProperty> Action
        The setProperty action sets the properties of a Bean.
        The Bean must have been previously defined before this action. There are two basic ways to use the setProperty action −

        You can use jsp:setProperty after, but outside of a jsp:useBean element, as given below −

        <jsp:useBean id = "myName" ... />
        ...
        <jsp:setProperty name = "myName" property = "someProperty" .../>
 #4. The <jsp:getProperty> Action
            The getProperty action is used to retrieve the value of a given property and converts it to a string, and finally inserts it into the output.

            The getProperty action has only two attributes, both of which are required. The syntax of the getProperty action is as follows −

            <jsp:useBean id = "myName" ... />
            ...
            <jsp:getProperty name = "myName" property = "someProperty" .../>
#5.The <jsp:forward> Action
        The forward action terminates the action of the current page and forwards the request to another
        resource such as a static page, another JSP page, or a Java Servlet.

        Following is the syntax of the forward action −

        <jsp:forward page = "Relative URL" />

#6.The <jsp:text> Action
 The <jsp:text> action can be used to write the template text in JSP pages and documents. Following is the simple syntax for this action −

                        <jsp:text>Template data</jsp:text>

                        <jsp:text><![CDATA[<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
                            "DTD/xhtml1-strict.dtd">]]></jsp:text>

#7.The <jsp:element>, <jsp:attribute> and <jsp:body> actions are used to define XML elements dynamically.
The word dynamically is important, because it means that the
 XML elements can be generated at request time rather than statically at compile time.
  <jsp:element name = "xmlElement">
         <jsp:attribute name = "xmlElementAttr">
            Value for the attribute
         </jsp:attribute>

         <jsp:body>
            Body for XML element
         </jsp:body>

      </jsp:element>