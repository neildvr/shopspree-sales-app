/*!
 * jQuery UI Position 1.11.4
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/position/
 */
!function(e){"function"==typeof define&&define.amd?define(["jquery"],e):e(jQuery)}(function(e){return function(){function t(e,t,n){return[parseFloat(e[0])*(f.test(e[0])?t/100:1),parseFloat(e[1])*(f.test(e[1])?n/100:1)]}function n(t,n){return parseInt(e.css(t,n),10)||0}function i(t){var n=t[0];return 9===n.nodeType?{width:t.width(),height:t.height(),offset:{top:0,left:0}}:e.isWindow(n)?{width:t.width(),height:t.height(),offset:{top:t.scrollTop(),left:t.scrollLeft()}}:n.preventDefault?{width:0,height:0,offset:{top:n.pageY,left:n.pageX}}:{width:t.outerWidth(),height:t.outerHeight(),offset:t.offset()}}e.ui=e.ui||{};var r,o,s=Math.max,a=Math.abs,l=Math.round,c=/left|center|right/,u=/top|center|bottom/,d=/[\+\-]\d+(\.[\d]+)?%?/,h=/^\w+/,f=/%$/,p=e.fn.position;e.position={scrollbarWidth:function(){if(void 0!==r)return r;var t,n,i=e("<div style='display:block;position:absolute;width:50px;height:50px;overflow:hidden;'><div style='height:100px;width:auto;'></div></div>"),o=i.children()[0];return e("body").append(i),t=o.offsetWidth,i.css("overflow","scroll"),n=o.offsetWidth,t===n&&(n=i[0].clientWidth),i.remove(),r=t-n},getScrollInfo:function(t){var n=t.isWindow||t.isDocument?"":t.element.css("overflow-x"),i=t.isWindow||t.isDocument?"":t.element.css("overflow-y"),r="scroll"===n||"auto"===n&&t.width<t.element[0].scrollWidth,o="scroll"===i||"auto"===i&&t.height<t.element[0].scrollHeight;return{width:o?e.position.scrollbarWidth():0,height:r?e.position.scrollbarWidth():0}},getWithinInfo:function(t){var n=e(t||window),i=e.isWindow(n[0]),r=!!n[0]&&9===n[0].nodeType;return{element:n,isWindow:i,isDocument:r,offset:n.offset()||{left:0,top:0},scrollLeft:n.scrollLeft(),scrollTop:n.scrollTop(),width:i||r?n.width():n.outerWidth(),height:i||r?n.height():n.outerHeight()}}},e.fn.position=function(r){if(!r||!r.of)return p.apply(this,arguments);r=e.extend({},r);var f,m,g,v,y,b,x=e(r.of),_=e.position.getWithinInfo(r.within),w=e.position.getScrollInfo(_),k=(r.collision||"flip").split(" "),C={};return b=i(x),x[0].preventDefault&&(r.at="left top"),m=b.width,g=b.height,v=b.offset,y=e.extend({},v),e.each(["my","at"],function(){var e,t,n=(r[this]||"").split(" ");1===n.length&&(n=c.test(n[0])?n.concat(["center"]):u.test(n[0])?["center"].concat(n):["center","center"]),n[0]=c.test(n[0])?n[0]:"center",n[1]=u.test(n[1])?n[1]:"center",e=d.exec(n[0]),t=d.exec(n[1]),C[this]=[e?e[0]:0,t?t[0]:0],r[this]=[h.exec(n[0])[0],h.exec(n[1])[0]]}),1===k.length&&(k[1]=k[0]),"right"===r.at[0]?y.left+=m:"center"===r.at[0]&&(y.left+=m/2),"bottom"===r.at[1]?y.top+=g:"center"===r.at[1]&&(y.top+=g/2),f=t(C.at,m,g),y.left+=f[0],y.top+=f[1],this.each(function(){var i,c,u=e(this),d=u.outerWidth(),h=u.outerHeight(),p=n(this,"marginLeft"),b=n(this,"marginTop"),T=d+p+n(this,"marginRight")+w.width,S=h+b+n(this,"marginBottom")+w.height,j=e.extend({},y),N=t(C.my,u.outerWidth(),u.outerHeight());"right"===r.my[0]?j.left-=d:"center"===r.my[0]&&(j.left-=d/2),"bottom"===r.my[1]?j.top-=h:"center"===r.my[1]&&(j.top-=h/2),j.left+=N[0],j.top+=N[1],o||(j.left=l(j.left),j.top=l(j.top)),i={marginLeft:p,marginTop:b},e.each(["left","top"],function(t,n){e.ui.position[k[t]]&&e.ui.position[k[t]][n](j,{targetWidth:m,targetHeight:g,elemWidth:d,elemHeight:h,collisionPosition:i,collisionWidth:T,collisionHeight:S,offset:[f[0]+N[0],f[1]+N[1]],my:r.my,at:r.at,within:_,elem:u})}),r.using&&(c=function(e){var t=v.left-j.left,n=t+m-d,i=v.top-j.top,o=i+g-h,l={target:{element:x,left:v.left,top:v.top,width:m,height:g},element:{element:u,left:j.left,top:j.top,width:d,height:h},horizontal:0>n?"left":t>0?"right":"center",vertical:0>o?"top":i>0?"bottom":"middle"};d>m&&a(t+n)<m&&(l.horizontal="center"),h>g&&a(i+o)<g&&(l.vertical="middle"),s(a(t),a(n))>s(a(i),a(o))?l.important="horizontal":l.important="vertical",r.using.call(this,e,l)}),u.offset(e.extend(j,{using:c}))})},e.ui.position={fit:{left:function(e,t){var n,i=t.within,r=i.isWindow?i.scrollLeft:i.offset.left,o=i.width,a=e.left-t.collisionPosition.marginLeft,l=r-a,c=a+t.collisionWidth-o-r;t.collisionWidth>o?l>0&&0>=c?(n=e.left+l+t.collisionWidth-o-r,e.left+=l-n):c>0&&0>=l?e.left=r:l>c?e.left=r+o-t.collisionWidth:e.left=r:l>0?e.left+=l:c>0?e.left-=c:e.left=s(e.left-a,e.left)},top:function(e,t){var n,i=t.within,r=i.isWindow?i.scrollTop:i.offset.top,o=t.within.height,a=e.top-t.collisionPosition.marginTop,l=r-a,c=a+t.collisionHeight-o-r;t.collisionHeight>o?l>0&&0>=c?(n=e.top+l+t.collisionHeight-o-r,e.top+=l-n):c>0&&0>=l?e.top=r:l>c?e.top=r+o-t.collisionHeight:e.top=r:l>0?e.top+=l:c>0?e.top-=c:e.top=s(e.top-a,e.top)}},flip:{left:function(e,t){var n,i,r=t.within,o=r.offset.left+r.scrollLeft,s=r.width,l=r.isWindow?r.scrollLeft:r.offset.left,c=e.left-t.collisionPosition.marginLeft,u=c-l,d=c+t.collisionWidth-s-l,h="left"===t.my[0]?-t.elemWidth:"right"===t.my[0]?t.elemWidth:0,f="left"===t.at[0]?t.targetWidth:"right"===t.at[0]?-t.targetWidth:0,p=-2*t.offset[0];0>u?(n=e.left+h+f+p+t.collisionWidth-s-o,(0>n||n<a(u))&&(e.left+=h+f+p)):d>0&&(i=e.left-t.collisionPosition.marginLeft+h+f+p-l,(i>0||a(i)<d)&&(e.left+=h+f+p))},top:function(e,t){var n,i,r=t.within,o=r.offset.top+r.scrollTop,s=r.height,l=r.isWindow?r.scrollTop:r.offset.top,c=e.top-t.collisionPosition.marginTop,u=c-l,d=c+t.collisionHeight-s-l,h="top"===t.my[1],f=h?-t.elemHeight:"bottom"===t.my[1]?t.elemHeight:0,p="top"===t.at[1]?t.targetHeight:"bottom"===t.at[1]?-t.targetHeight:0,m=-2*t.offset[1];0>u?(i=e.top+f+p+m+t.collisionHeight-s-o,(0>i||i<a(u))&&(e.top+=f+p+m)):d>0&&(n=e.top-t.collisionPosition.marginTop+f+p+m-l,(n>0||a(n)<d)&&(e.top+=f+p+m))}},flipfit:{left:function(){e.ui.position.flip.left.apply(this,arguments),e.ui.position.fit.left.apply(this,arguments)},top:function(){e.ui.position.flip.top.apply(this,arguments),e.ui.position.fit.top.apply(this,arguments)}}},function(){var t,n,i,r,s,a=document.getElementsByTagName("body")[0],l=document.createElement("div");t=document.createElement(a?"div":"body"),i={visibility:"hidden",width:0,height:0,border:0,margin:0,background:"none"},a&&e.extend(i,{position:"absolute",left:"-1000px",top:"-1000px"});for(s in i)t.style[s]=i[s];t.appendChild(l),n=a||document.documentElement,n.insertBefore(t,n.firstChild),l.style.cssText="position: absolute; left: 10.7432222px;",r=e(l).offset().left,o=r>10&&11>r,t.innerHTML="",n.removeChild(t)}()}(),e.ui.position});