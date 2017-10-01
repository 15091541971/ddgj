<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="text/css" href="../images/logo.ico" />
    <link rel="stylesheet" href="../css/base.css">
    <link rel="stylesheet" href="../css/fabudingzhimiaoshu.css">
    <title>个人中心</title>
</head>
<body>
<!--顶部-->
<div class="head">
    <div class="dc">
        <ul class="nav-left">
            <li>
                <a href="#">用户名</a>
                <a href="#" class="noborder">退出登录</a>
            </li>
        </ul>
        <ul class="nav-right">
            <li>
                <dl>
                    <dt><a href="../peopleown/peopleJbxx.html">个人中心</a></dt>
                    <dd></dd>
                </dl>

            </li>
            <li>
                <dl>
                    <dt><a href="#">社区</a></dt>
                    <dd></dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt><a href="#">收藏夹</a></dt>
                    <dd></dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt><a href="#">消息</a></dt>
                    <dd></dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt><a href="#">联系客服</a></dt>
                    <dd></dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt class="noborder"><a href="#">网站导航</a></dt>
                    <dd></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>
<div class="lg">
    <div class="logo">
        <img class="img1" src="../images/logo.png">
        <div class="guanwang">
            <img src="../images/发布采购描述_03.jpg">
        </div>

    </div>
</div>
<div class="fabu">
    <div class="fb">
        <div class="fbcy">
            <img src="../images/发布定制_03.jpg">
            <span>我要订制</span>
        </div>

    </div>
    <div class="msqr">
        <span>选择行业类别</span>
        <span>描述确认发布</span>
    </div>
    <div class="beijing"></div>
    <div class="fbnr">
        <div class="xuanzexiang">
            <span>您选择了:</span>
            <span>屠宰及肉类加工-肉制品及其副产品加工</span>
            <a href="fabuxuanshang.jsp">修改</a>
        </div>
        <form class="msnr" action="" method="get">
            <p class="msn">标题</p>
            <input class="msnk" type="text" title="search" placeholder="&nbsp;&nbsp;专利名称字数应该为5-32个">
            <p class="msnt">详情描述:</p>
            <textarea class="msnkt" type="" title="search" placeholder="&nbsp;&nbsp;详细信息在其中表明,45字以上"></textarea>
            <div class="sj-time">
                <span>订制数量&价格:</span>
                <span>定制数量:</span>
                <input class="yuan" type="text" title="search" placeholder="">
                <span>个</span>
                <span>&nbsp;&nbsp;报价:</span>
                <input class="time" type="text" title="search" placeholder="">
            </div>
            <div class="tjimg">
                <span>添加图片:</span>
                <input type="file" name="file1" style="width:180px;" />
                <!--<input type="submit" name="Submit" value="添加" />-->
            </div>



            <table cellpadding="1" cellspacing="1" border="0">
                <div class="td" width="100%">附件列表:</div>
                <div id="inputFile">
                    <button type="button" onclick="addFile();">增加</button>
                    <p id="index_1"><input type="file" name="files"></input><button type="button" onclick="delFile('inputFile',this.parentNode.id);">删除</button></p>
                </div>
            </table>
            <div class="lxfs">
                <span>昵称:</span>
                <span>皮皮虾</span>
            </div>
            <div class="lxfs">
                <span>联系方式:</span>
                <span>12345678911</span>
            </div>

            <div class="qdfb">
                <input type="checkbox" id="policy" name="policy" value="true" />
                <span>我已经阅读并同意</span>
                <a href="#">豆丁工匠相关协议</a>
                <button type="button">确定发布</button>
            </div>

        </form>
    </div>
</div>

<!--底部-->
<div class="bt">
    <div class="bt-n">
        <ul>
            <li>豆丁指南:</li>
            <li><a href="#">注册</a></li>
            <li><a href="#">发布</a></li>
            <li><a href="#">联系我们</a></li>
            <li><a href="#">简介</a></li>
        </ul>
        <ul>
            <li>特色产品:</li>
            <li><a href="#">特色创意产品</a></li>

        </ul>
        <ul>
            <li>服务支持:</li>
            <li><a href="#">推广</a></li>
            <li><a href="#">招商</a></li>
        </ul>
        <ul>
            <li>帮助中心:</li>
            <li><a href="#">简介</a></li>
            <li><a href="#">问题</a></li>
        </ul>
    </div>
    <div class="gs-name">©西安豆丁网络科技有限公司</div>
</div>
<script type="text/javascript">

    function delFile(obj, index){
        var inputFileId = document.getElementById(obj);
        var inputFileByIndex = document.getElementById(index);
        inputFileId.removeChild(inputFileByIndex);
    }
    function addFile(){
        var fileName = "inputFile";
        var inputFileId = document.getElementById(fileName);
        var index = 1;
        if(null == inputFileId.lastChild || inputFileId.lastChild.id == undefined ){
            index = 1;
        }else{
            index = parseInt(inputFileId.lastChild.id.substring(6))+1;
        }

        var p = document.createElement("p");
        p.id="index_"+index;
        var input = document.createElement("input");
        input.type="file";
        input.name="files";
        var button = document.createElement("button");
        button.type="button";button.innerHTML="删除";button.onclick=function(){delFile(fileName, p.id);};
        p.appendChild(input);
        p.appendChild(button);

        inputFileId.appendChild(p);
    }
</script>
</body>
</html>