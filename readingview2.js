function next(elem) {
    do {
        elem = elem.nextSibling;
    }
    while (elem && elem.nodeType != 1);
    return elem;
}
function showHide(sender) {
    var dt = sender;
    var nextElem = next(dt);
    if (nextElem.style.display != 'none') {
        nextElem.style.display = 'none';
    } else {
        nextElem.style.display = 'block';
    }
}