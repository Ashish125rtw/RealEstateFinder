<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">

        <!-- Dashboard (Home) -->
        <li class="nav-item">
            <a class="nav-link" href="SellerDashboard">
                <i class="bi bi-grid"></i> <span>Dashboard (Home)</span>
            </a>
        </li>

        <!-- Manage Properties -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-toggle="collapse" href="#properties-nav">
                <i class="bi bi-building"></i> <span>My Properties</span> <i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="properties-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li><a href="ListProperty" target="_blank"><i class="bi bi-circle"></i> <span>View My Listings</span></a></li>
                <li><a href="Property" target="_blank"><i class="bi bi-circle"></i> <span>Add New Property</span></a></li>
            </ul>
        </li>

        <!-- Manage Inquiries -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="ManageInquiries">
                <i class="bi bi-envelope"></i> <span>Manage Inquiries</span>
            </a>
        </li>

        <!-- Payment & Transactions -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="MyPayments">
                <i class="bi bi-credit-card"></i> <span>Payment Management</span>
            </a>
        </li>

    </ul>
</aside>
