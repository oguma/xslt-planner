# planner-xsl

## Usage
    $ xsltproc xsl/tasks.xsl samples/project1.planner

    $ xsltproc -o out.planner xsl/calendar_template.xsl samples/project1.planner
    ($ xsltproc xsl/calendar_template.xsl samples/project1.planner > out.planner)
    ($ xsltproc xsl/calendar_template.xsl samples/project1.planner)

    $ xsltproc -o out.planner xsl/assign_me.xsl samples/project1.planner

    $ xsltproc -o out.planner xsl/automatic_resource_leveling.xsl samples/project1.planner

## See also
- [Planner](https://wiki.gnome.org/Apps/Planner)
- [xsltproc](http://xmlsoft.org/XSLT/xsltproc2.html)
