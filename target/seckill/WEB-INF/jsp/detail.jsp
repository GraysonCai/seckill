<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
   <head>
      <title>秒杀详情页</title>
      <%@include file="common/tag.jsp"%>
      <%@include file="common/head.jsp"%>
   </head>
   <body>
      <div class="container">
         <div class="panel panel-default text-center">
            <div class="panel-heading">
               <h2>${seckill.name}</h2>
            </div>
            <div class="panel-body">
                <h2 class="text-danger">
                    <%--显示time图标--%>
                    <span class="glyphicon glyphicon-time"></span>
                    <%--显示倒计时--%>
                    <span class="glyphicon" id="seckill-box"></span>
                </h2>
            </div>
         </div>
      </div>
      <%--登录弹出层,输入电话--%>
      <div id="killPhoneModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title text-center">
                            <span class="glyphicon glyphphone"></span>秒杀电话：
                        </h3>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-xs-8 col-xs-offset-2">
                                <input type="text" class="form-control" name="killphone" id="killphoneKey" placeholder="填手机号^O^">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <span id="killphoneMessage" class="glyphicon"></span>
                        <button type="button" class="btn btn-success" id="killphoneBtn">
                            <span class="glyphicon glyphicon-phone"></span>
                            Summit
                        </button>
                    </div>
                </div>
            </div>
      </div>

        <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
        <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
        <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
        <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.js"></script>
        <script src="https://cdn.bootcss.com/jquery.countdown/2.1.0/jquery.countdown.js"></script>
        <script type="text/javascript" src="../../resources/script/seckill.js"></script>
        <script type="text/javascript">
            $(function () {
               seckill.detail.init({
                   seckillId : ${seckill.seckillId},
                   startTime : ${seckill.startTime.time},
                    endTime : ${seckill.endTime.time}
               });
            });
        </script>
   </body>
</html>