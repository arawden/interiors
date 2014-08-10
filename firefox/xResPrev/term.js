var textColors=[];
var blockColors=[];

function term(){
	var t = document.querySelector("#termin").value;
	par(t);
	buildCSS();
}
function clearForm(){
        document.querySelector("#termin").value = "";
}

function par(s){
	var p = s.split('\n');
	for(var i=0;i<p.length;i++){
		if(p[i].match(/(.ground)/ig)){
			blockColors.push(p[i]);
		}
		else if(p[i].match(/(.color)/ig)){
			textColors.push(p[i]);s
		}
	}
}

function buildCSS(){
	document.querySelector('.start').setAttribute('class','result');
	var h = document.querySelector('.result');
	for(var i=0;i<blockColors.length;i++){
		var ind = blockColors[i].indexOf("#");
		if(blockColors[i].match(/(.foreground)/ig)){
			var fg = blockColors[i].substring(ind);
			h.style.color = fg;
		}
		if(blockColors[i].match(/(.background)/ig)){
			var bg = blockColors[i].substring(ind);
			h.style.backgroundColor = bg;
		}
	}
	for(var j=0;j<textColors.length;j++){
		var ind = textColors[j].indexOf("#");
		if(textColors[j].match(/(.color0:)/ig)){
			var p = document.querySelector('.p0');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color1:)/ig)){
			var p = document.querySelector('.p1');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color2:)/ig)){
			var p = document.querySelector('.p2');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color3:)/ig)){
			var p = document.querySelector('.p3');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color4)/ig)){
			var p = document.querySelector('.p4');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color5)/ig)){
			var p = document.querySelector('.p5');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color6)/ig)){
			var p = document.querySelector('.p6');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color7)/ig)){
			var p = document.querySelector('.p7');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color8)/ig)){
			var p = document.querySelector('.p8');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color9)/ig)){
			var p = document.querySelector('.p9');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color10)/ig)){
			var p = document.querySelector('.p10');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color11)/ig)){
			var p = document.querySelector('.p11');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color12)/ig)){
			var p = document.querySelector('.p12');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color13)/ig)){
			var p = document.querySelector('.p13');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color14)/ig)){
			var p = document.querySelector('.p14');
			p.style.color = textColors[j].substring(ind);
		}
		else if(textColors[j].match(/(.color15)/ig)){
			var p = document.querySelector('.p15');
			p.style.color = textColors[j].substring(ind);
		}
	}

}
