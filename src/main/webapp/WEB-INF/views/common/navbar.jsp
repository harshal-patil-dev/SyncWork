<style>

    @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap');

    .navbar {
        width: 100%;
        height: 76px;
        padding: 0 7%;
        display: flex;
        align-items: center;
        justify-content: space-between;
        background: #ffffff;
        border-bottom: 1px solid #e5e7eb;
        box-sizing: border-box;
    }

    .logo {
        text-decoration: none;
        font-size: 24px;
        font-weight: 800;
        letter-spacing: -1px;
        color: #111827;
        white-space: nowrap;
    }

    .logo span {
        color: #4f46e5;
    }

    .nav-links {
        list-style: none;
        display: flex;
        align-items: center;
        gap: 5px;
        margin-left: auto;
        margin-right: 28px;
        padding: 0;
    }

    .nav-links li {
        display: flex;
    }

    .nav-links a {
        text-decoration: none;
        color: #64748b;
        font-size: 13px;
        font-weight: 600;
        padding: 10px 13px;
        border-radius: 8px;
        transition: 0.2s ease;
        white-space: nowrap;
        box-sizing: border-box;
    }

    .nav-links a:hover {
        color: #4f46e5;
        background: #f5f3ff;
    }

    .nav-links a.active {
        color: #4f46e5;
        background: #eef2ff;
        font-weight: 600;
    }

    .user-area {
        display: flex;
        align-items: center;
        gap: 14px;
        white-space: nowrap;
    }

    .user-name {
        color: #374151;
        font-size: 14px;
        font-weight: 600;
    }

    .user-name span {
        color: #64748b;
        font-weight: 500;
    }

    .logout-btn {
        text-decoration: none;
        color: #4f46e5;
        background: #eef2ff;
        border: 1px solid #e0e7ff;
        font-size: 13px;
        font-weight: 700;
        padding: 10px 16px;
        border-radius: 8px;
        transition: 0.2s ease;
    }

    .logout-btn:hover {
        color: #ffffff;
        background: #4f46e5;
        border-color: #4f46e5;
    }

    @media (max-width: 1050px) {

        .navbar {
            padding: 0 4%;
        }

        .nav-links {
            gap: 2px;
            margin-right: 18px;
        }

        .nav-links a {
            padding: 9px 8px;
        }

    }

    @media (max-width: 760px) {

        .navbar {
            height: auto;
            min-height: 72px;
            flex-wrap: wrap;
            padding: 15px 5%;
            gap: 10px;
        }

        .nav-links {
            order: 3;
            width: 100%;
            overflow-x: auto;
            margin: 0;
            padding-bottom: 3px;
        }

        .nav-links a {
            white-space: nowrap;
        }

        .user-area {
            margin-left: auto;
        }

    }

    @media (max-width: 520px) {

        .user-name span {
            display: none;
        }

        .user-area {
            gap: 8px;
        }

        .logout-btn {
            padding: 10px 12px;
        }

    }

</style>

<nav class="navbar">

    <a href="home" class="logo">
        Sync<span>Work</span>
    </a>

    <ul class="nav-links">

        <li>
            <a href="home" class="${activePage == 'home' ? 'active' : ''}">
                Dashboard
            </a>
        </li>

        <li>
            <a href="add-employee" class="${activePage == 'add' ? 'active' : ''}">
                Add Employee
            </a>
        </li>

        <li>
            <a href="get-employee" class="${activePage == 'employees' ? 'active' : ''}">
                Employees
            </a>
        </li>

        <li>
            <a href="update-employee-nav" class="${activePage == 'update' ? 'active' : ''}">
                Update
            </a>
        </li>

        <li>
            <a href="delete-employee-nav" class="${activePage == 'delete' ? 'active' : ''}">
                Delete
            </a>
        </li>

    </ul>

    <div class="user-area">

        <div class="user-name">
            <span>Hi, </span>${sessionScope.user}
        </div>

        <a href="logout-user" class="logout-btn">
            Logout
        </a>

    </div>

</nav>