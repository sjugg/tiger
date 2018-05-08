function showHide(objname) {
	var bg = document.getElementById(objname.substring(0, 6));

	var obj = document.getElementById(objname);
	if (objname.indexOf('_1') < 0 || objname.indexOf('_10') > 0) {
		if (obj.style.display == 'block' || obj.style.display == '') {
			obj.style.display = 'none';
			alert();
		} else {
			obj.style.display = 'block';
		}
		return true;
	}
	var ckstr = getCookie('menuitems');
	var ckstrs = null;
	var okstr = '';
	var ischange = false;
	if (ckstr == null)
		ckstr = '';
	ckstrs = ckstr.split(',');
	objname = objname.replace('items', '');
	if (obj.style.display == 'block' || obj.style.display == '') {
		obj.style.display = 'none';
		bg.style.background = 'url(images/menubg_down.png)';
		for (var i = 0; i < ckstrs.length; i++) {
			if (ckstrs[i] == '')
				continue;
			if (ckstrs[i] == objname) {
				ischange = true;
			} else
				okstr += (okstr == '' ? ckstrs[i] : ',' + ckstrs[i]);
		}
		if (ischange)
			setCookie('menuitems', okstr, 7);
	} else {
		obj.style.display = 'block';
		bg.style.background = 'url(images/menubg_up.png)';
		ischange = true;
		for (var i = 0; i < ckstrs.length; i++) {
			if (ckstrs[i] == objname) {
				ischange = false;
				break;
			}
		}
		if (ischange) {
			ckstr = (ckstr == null ? objname : ckstr + ',' + objname);
			setCookie('menuitems', ckstr, 7);
		}
	}
}

function getCookie(c_name) {
	if (document.cookie.length > 0) {
		c_start = document.cookie.indexOf(c_name + "=");
		if (c_start != -1) {
			c_start = c_start + c_name.length + 1;
			c_end = document.cookie.indexOf(";", c_start);
			if (c_end == -1) {
				c_end = document.cookie.length;
			}
			return unescape(document.cookie.substring(c_start, c_end));
		}
	}
	return null;
}
function setCookie(c_name, value, expiredays) {
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + expiredays);
	document.cookie = c_name + "=" + escape(value)
			+ ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString()); //使设置的有效时间正确。增加toGMTString()
}

var totalitem = 12;
function CheckOpenMenu() {
	var ckstr = getCookie('menuitems');
	var curitem = '';
	var curobj = null;

	if (ckstr == null) {
		ckstr = '1_1,2_1,3_1';
		setCookie('menuitems', ckstr, 7);
	}
	ckstr = ',' + ckstr + ',';
	for (var i = 0; i < totalitem; i++) {
		curitem = i + '_' + curopenItem;
		curobj = document.getElementById('items' + curitem);
		if (ckstr.indexOf(curitem) > 0 && curobj != null) {
			curobj.style.display = 'block';
		} else {
			if (curobj != null)
				curobj.style.display = 'none';
		}
	}
}

var curitem = 1;
function ShowMainMenu(n) {
	var curLink = $DE('link' + curitem);
	var targetLink = $DE('link' + n);
	var curCt = $DE('ct' + curitem);
	var targetCt = $DE('ct' + n);
	if (curitem == n)
		return false;
	if (targetCt.innerHTML != '') {
		curCt.style.display = 'none';
		targetCt.style.display = 'block';
		curLink.className = 'mm';
		targetLink.className = 'mmac';
		curitem = n;
	} else {
		var myajax = new DedeAjax(targetCt);
		myajax.SendGet2("index_menu_load.php?openitem=" + n);
		if (targetCt.innerHTML != '') {
			curCt.style.display = 'none';
			targetCt.style.display = 'block';
			curLink.className = 'mm';
			targetLink.className = 'mmac';
			curitem = n;
		}
		DedeXHTTP = null;
	}
}

$(function() {
	$(".sitemu li").click(function() {
		$(".sitemu li").removeClass('selected');
		$(this).addClass('selected');
	});
});

function logout() {
   if(confirm("确定要注销登录吗?")) {
	   window.parent.location="adminLogout.action";
   }
}