<div class="page-sidebar nav-collapse collapse">
	<!-- BEGIN SIDEBAR MENU -->
	<ul class="page-sidebar-menu">
		<li>
			<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
			<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
		</li>
		<li>
			<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
			<form class="sidebar-search">
				<div class="input-box">
					<a href="javascript:;" class="remove"></a> <input type="text"
						placeholder="Search..." /> <input type="button" class="submit"
						value=" " />
				</div>
			</form> <!-- END RESPONSIVE QUICK SEARCH FORM --></li>
		<li
			class="start <%if (p.equals("index")) {
				out.print("active");
			}%>"><a
			href="/users/index.do"> <i class="icon-home"></i> <span
				class="title">Dashboard</span> </a></li>
		<li><a href="javascript:;"> <i class="icon-sitemap"></i> <span
				class="title">Shortcuts</span> <span class="arrow "></span> </a>
			<ul class="sub-menu">
				<li><a href="javascript:;"> News <span class="arrow"></span>
				</a>
					<ul class="sub-menu">
						<li><a href="http://news.sina.com.cn/">Sina</a>
						</li>
						<li><a href="http://news.sohu.com/">Sohu</a>
						</li>
						<li><a href="http://www.cntv.cn/">CNTV</a>
						</li>
					</ul></li>
				<li><a href="javascript:;"> Email <span class="arrow"></span>
				</a>
					<ul class="sub-menu">
						<li><a href="http://mail.126.com/">126</a>
						</li>
						<li><a href="https://mail.google.com/mail/">Gmail</a>
						</li>
						<li><a href="http://mail.qq.com/">QQ</a>
						</li>
					</ul></li>
				<li><a href="http://www.zhaopin.com/">ZhaoPin</a></li>
			</ul></li>
		<li
			class="<%if (StringHelper.isIn(p, new String[] { "user-list", "config-list",
					"order-list", "log-list" })) {
				out.print("open");
			}%>"><a
			href="javascript:;"> <i class="icon-th"></i> <span class="title">Data
					Tables</span> <span class="selected"></span> <span class="arrow open"></span>
		</a>
			<ul class="sub-menu"
				style="display: <%if (StringHelper.isIn(p, new String[] { "user-list", "config-list",
					"order-list", "log-list" })) {
				out.print("block");
			} else {
				out.print("none");
			}%>;">
				<li><a href="/configs/list.do">Basic Tables</a></li>
				<li><a href="/users/list.do">User Tables</a></li>
				<li
					class="<%if (p.equals("order-list")) {
				out.print("active");
			}%>"><a
					href="/orders/list.do">Order Tables</a>
				</li>
				<li><a href="/logs/list.do">Log Tables</a></li>
			</ul>
		</li>
		<li class="last"><a href="javascript:;"> <i
				class="icon-file-text"></i> <span class="title">Search Engine</span>
				<span class="arrow "></span> </a>
			<ul class="sub-menu">
				<li><a href="http://www.baidu.com/">Baidu</a></li>
				<li><a href="https://www.google.com.hk/">Google</a></li>
			</ul></li>
	</ul>
	<!-- END SIDEBAR MENU -->
</div>