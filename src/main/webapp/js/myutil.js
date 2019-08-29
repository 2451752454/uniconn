function getid(id) {
    return document.getElementById(id);
}
function getname(name) {
    return document.getElementsByName(name);
}
function gettagname(tagname) {
    return document.getElementsByTagName(tagname);
}

function guolukongbai(node) {//去空白
    for (var i = 0; i < node.length; i++) {//便利所以的
        if(node[i].nodeType == 3 && /^\s+$/.test(node[i].nodeValue)){//判断是否有空格,换行等
            node[i].parentNode.removeChild(node[i]);//如有去掉
        }
    }
    return node;
}

function add(is) {
    return document.createElement(is);
}


/**
 * //path :地址 send Data 传输的数据 sFunction接受数据后干嘛;
 * @param path
 * @param sendData
 * @param sFunction
 * @returns
 */
function ALLAJAX(path, sendData, sFunction) {
    $.ajax({
        type : "POST",
        url : path,
        data : sendData,
        dataType : "text",
        success : sFunction,
        error : function() {
            alert("访问错误");
        }
    });
}

function GETALLAJAX(path, sendData, sFunction) {
    $.ajax({
        type : "GET",
        url : path,
        data : sendData,
        dataType : "text",
        success : sFunction,
        error : function() {
            alert("访问错误");
        }
    });
}

