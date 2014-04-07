window.onload = init

function init() {
    var ul = document.getElementsByTagName("li");
    li[0].addEventListener('click', show_hide, false);
}

function show_hide() {
    var ul = document.getElementByTagName("ul");
    if (p.style.display == "none") {
        p.style.display = "block";
    } else {
        p.style.display = "none";
    }
}

combine?  edit?


function next(elem) {
    do {
        elem = elem.nextSibling;
    }
    while (elem && elem.nodeType != 1);
    return elem;
}
function showHide(sender) {
    var WHAT SHOULD THIS VAR BE? = sender;
    var nextElem = next(dt);
    if (nextElem.style.display != 'none') {
        nextElem.style.display = 'block';
    } else {
        nextElem.style.display = 'none';
    }
}
