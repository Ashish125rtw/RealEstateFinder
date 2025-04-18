
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<aside id="sidebar" class="sidebar">
	<ul class="sidebar-nav" id="sidebar-nav">

		<!-- Dashboard (Home) -->
		<li class="nav-item"><a class="nav-link" href="AdminDashboard">
				<i class="bi bi-grid"></i> <span>Dashboard (Home)</span>
		</a></li>

		<!-- Manage Users -->
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-toggle="collapse" href="#users-nav"> <i
				class="bi bi-people"></i> <span>Manage Users</span> <i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="users-nav" class="nav-content collapse"
				data-bs-parent="#sidebar-nav">
				<li><a href="ListUser"><i class="bi bi-circle"></i> <span>View
							All Users</span></a></li>
				

			</ul></li>

		<!-- Manage Properties -->
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-toggle="collapse" href="#properties-nav"> <i
				class="bi bi-building"></i> <span>Manage Properties</span> <i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="properties-nav" class="nav-content collapse"
				data-bs-parent="#sidebar-nav">
				<li><a href="admin-pending-properties"><i class="bi bi-circle"></i>
						<span>Approve/Reject Listings</span></a></li>
				<li><a href="ListProperty"><i class="bi bi-circle"></i> <span>View
							All Properties</span></a></li>
			</ul></li>


		<!-- Reports & Analytics -->
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-toggle="collapse" href="#reports-nav"> <i
				class="bi bi-bar-chart-fill"></i> <span>Reports & Analytics</span> <i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="reports-nav" class="nav-content collapse"
				data-bs-parent="#sidebar-nav">
				<li></li>
				<li><a href="BuyerReport"><i class="bi bi-circle"></i> <span>Buyer
							Report</span></a></li>
				<li><a href="SellerReport"><i class="bi bi-circle"></i> <span>Seller
							Report</span></a></li>
				<li><a href="AgentReport"><i class="bi bi-circle"></i> <span>Agent
							Report</span></a></li>
			</ul></li>

		<!-- Inquiry from user  -->
		<!-- Homepage Contact Inquiries -->
		<li class="nav-item"><a class="nav-link collapsed"
			href="Listmessages"> <i class="bi bi-envelope"></i> <span>Homepage
					Inquiries</span>
		</a></li>
		<!-- Manage Transactions -->
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-toggle="collapse" href="#transactions-nav"> <i
				class="bi bi-credit-card"></i> <span>Manage Transactions</span> <i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="transactions-nav" class="nav-content collapse"
				data-bs-parent="#sidebar-nav">
				<li><a href="noData"><i class="bi bi-circle"></i> <span>View
							Payments</span></a></li>
				<li><a href="noData"><i class="bi bi-circle"></i> <span>Refund
							Requests</span></a></li>
			</ul></li>

		<!-- Customer Support Panel -->
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-toggle="collapse" href="#support-nav"> <i
				class="bi bi-headset"></i> <span>Customer Support Panel</span> <i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="support-nav" class="nav-content collapse"
				data-bs-parent="#sidebar-nav">
				<li><a href="noData"><i class="bi bi-circle"></i> <span>View
							Complaints & Disputes</span></a></li>
				<li><a href="noData"><i class="bi bi-circle"></i> <span>Contact
							Support Team</span></a></li>
			</ul></li>

	</ul>
</aside>
