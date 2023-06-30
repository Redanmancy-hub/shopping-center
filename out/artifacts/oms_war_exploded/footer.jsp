
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    .footer {
        display: flex;
        justify-content: center;
    }

    .container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .container .text-centerol {
        position: relative;
    }

    .container ol {
        display: flex;
        list-style: none;
        justify-content: center;
        padding: 0;
        margin: 0;
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
    }

    .containerol ol {
        display: flex;
        list-style: none;
        justify-content: center;
        padding: 0;
        margin: 0;
        position: absolute;
        top: 850px;
        left: 0;
        right: 0;
    }

    .containerol ol li {
        padding: 60px;
        font-size: 24px;
    }

    .container ol li {
        padding: 400px;
        font-size: 24px;
    }

    .containerpl ol li {
        padding: 10px;
        font-size: 24px;
    }

    .container img {
        width: 432px;
        height: 400px;
    }
    #image{
        width: 1200px;
        height: 400px;
    }
</style>
<!--footer-->
<div class="footer"  style="background-color: rgb(245,235,235);">
    <div class="containerol">
        <div class="text-centerol">
            <ol class="ol" style="margin-top: 40px">
                <li><a href="#">联系我们</a></li>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">我要投诉</a></li>
            </ol>
            <p><img id="image" src="images/2.jpg"></p>
        </div>
    </div>
</div>
<!--//footer-->