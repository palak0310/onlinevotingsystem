<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="in.co.online.vote.bean.VoteBean"%>
<%@page import="java.util.List"%>
<%@page import="in.co.online.vote.controller.OVSView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
<style>
 *{
 
 margin: 0;
 padding:0;
 }
 body{
	margin: 0;
	padding: 0;s
	font-family: sans-serif;
	background:url(/OnlineVotingSystem/img/vot2.jpg) no-repeat;
	background-size: cover;
	background-color: darkgray;
}
.pic{
    width: 100px;
    height: 100px;
    border-radius: 50px;
    top: -100px;
} 
</style>
</head>
<body>
<%@ include file="Header.jsp"%>
<main class="login-form">
	<div class="cotainer">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">
					Result
						
					</div>

					<div class="card-body">

						<form action="<%=OVSView.VOTE_LIST_CTL%>" method="post">
						<%List<VoteBean> partylist = (List)request.getAttribute("partylist");
						
						System.out.println("List size" +partylist.size());
						for(int i =0;i<8;i++){
							%>
							<div class="form-group row">
								<label for="email_address" 
									class="col-md-4 col-form-label text-md-right"><%=partylist.get(i).getPartyName()%><font color="red">*</font></label>
								<%if(i==0){ %>
								<div class="col-md-6">
									<img alt="" src="/OnlineVotingSystem/img/bsp.jpg" style="height: 40px">&ensp;&ensp;&ensp;&ensp;
									<%=partylist.get(i).getPartyId()%>
								</div>
								<%} %>
								<%if(i==1){ %>
								<div class="col-md-6">
									<img alt="" src="/OnlineVotingSystem/img/aap.jpg" style="height: 40px">&ensp;&ensp;&ensp;&ensp;
									<%=partylist.get(i).getPartyId()%>
								</div>
								<%} %>
								<%if(i==2){ %>
								<div class="col-md-6">
									<img alt="" src="/OnlineVotingSystem/img/BJP.jpg" style="height: 40px">&ensp;&ensp;&ensp;&ensp;
									<%=partylist.get(i).getPartyId()%>
								</div>
								<%} %>
								<%if(i==3){ %>
								<div class="col-md-6">
									<img alt="" src="/OnlineVotingSystem/img/cpi.jpg" style="height: 40px">&ensp;&ensp;&ensp;&ensp;
									<%=partylist.get(i).getPartyId()%>
								</div>
								<%} %>
								<%if(i==4){ %>
								<div class="col-md-6">
									<img alt="" src="/OnlineVotingSystem/img/cpm.jpg" style="height: 40px">&ensp;&ensp;&ensp;&ensp;
									<%=partylist.get(i).getPartyId()%>
								</div>
								<%} %>
								<%if(i==5){ %>
								<div class="col-md-6">
									<img alt="" src="/OnlineVotingSystem/img/congress.jpg" style="height: 40px">&ensp;&ensp;&ensp;&ensp;
									<%=partylist.get(i).getPartyId()%>
								</div>
								<%} %>
								<%if(i==6){ %>
								<div class="col-md-6">
									<img alt="" src="/OnlineVotingSystem/img/samajvadi.jpg" style="height: 40px">&ensp;&ensp;&ensp;&ensp;
									<%=partylist.get(i).getPartyId()%>
								</div>
								<%} %>
								<%if(i==7){ %>
								<div class="col-md-6">
									<img alt="" src="/OnlineVotingSystem/img/ncp.png" style="height: 40px">&ensp;&ensp;&ensp;&ensp;
									<%=partylist.get(i).getPartyId()%>
								</div>
								<%} %>
							</div>
							
							<% 
						}
						for(int i =8;i<partylist.size();i++){
							%>
							<div class="form-group row">
								<label for="email_address" 
									class="col-md-4 col-form-label text-md-right"><%=partylist.get(i).getPartyName()%><font color="red">*</font></label>
								<div class="col-md-6">
									<img alt="" src="/OnlineVotingSystem/img/cp.jpg" style="height: 40px">&ensp;&ensp;&ensp;&ensp;
									<%=partylist.get(i).getPartyId()%>
								</div>
							</div>
							
							<% 
						}
						
						%>
						
							
							
							

							
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	</main>
	<div style="margin-top: 168px">
		<%@ include file="Footer.jsp"%>
	</div>
</body>
</html>