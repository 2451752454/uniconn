function changeIframe(node){
    if(node.innerText!="退出"){
        var iframeNode = document.getElementById("myframe");
        iframeNode.src = node.title;
        alert(iframeNode.src);
    }else{
        node.href = node.title;
    }
}