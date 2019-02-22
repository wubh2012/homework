if [ -d $1 ]; then
    echo $1 '已经存在了'
    exit
else
    mkdir $1 
    cd $1 
    mkdir css js
    touch index.html css/style.css js/main.js
    echo -e '<!DOCTYPE>\n<title>Hello</title>\n<h1>Hi</h1>' >> index.html
    echo 'h1{color: red;}' >> css/style.css
    echo -e 'var string = "Hello World"\nalert(string)' >> js/main.js
    echo $1 '创建成功'
    exit
fi