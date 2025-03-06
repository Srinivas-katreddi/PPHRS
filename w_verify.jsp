<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>OTP</title>
    <style>
   input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
    </style>
</head>
<body class="container-fluid bg-body-tertiary d-block">
  <div class="row justify-content-center">
      <div class="col-12 col-md-6 col-lg-4" style="min-width: 500px;">
        <div class="card bg-white mb-5 mt-5 border-0" style="box-shadow: 0 12px 15px rgba(0, 0, 0, 0.02);">
          <div class="card-body p-5 text-center">
            <h4>Verify OTP</h4>
            
			<form method="post">
            <div class="otp-field mb-4">
              <input type="number" name="otp1" required />
              <input type="number" name="otp2" required disabled />
              <input type="number" name="otp3" required disabled />
              <input type="number" name="otp4" required disabled />
              <input type="number" name="otp5" required disabled />
              <input type="number" name="otp6" required disabled />
            </div>

           <button class="btn btn-primary mb-3">
              Verify
            </button>
              
			</form>
            <p class="resend text-muted mb-0">
              Didn't receive code? <a href="p_login.jsp">Back To Home</a>
            </p>
          </div>
        </div>
      </div>
    </div>

  
  
  <style>
	/* General Styles */
body {
    background: linear-gradient(135deg, color-mix(in srgb, #0d83fd, transparent 95%) 50%, color-mix(in srgb, #0d83fd, transparent 98%) 25%, transparent 50%);

    font-family: Arial, sans-serif;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 0;
}

/* Centered Box */
.card {
    width: 380px;
    background: white;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
    text-align: center;
}

/* Heading */
h4 {
    font-weight: 600;
    color: #333;
    margin-bottom: 20px;
}

/* OTP Field */
.otp-field {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-bottom: 20px;
}

.otp-field input {
    width: 45px;
    height: 50px;
    border-radius: 8px;
    border: 1px solid #ddd;
    text-align: center;
    font-size: 20px;
    font-weight: bold;
    outline: none;
    transition: all 0.3s ease;
}

.otp-field input:focus {
    border-color: #007bff;
box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);

}

/* Verify Button */
.btn {
    background-color: #0d83fd;
    color: white;
    border: none;
    padding: 12px;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    width: 100%;
    transition: background 0.3s ease;
}

.btn:hover {
    background-color: #89CFF0;
}

/* Resend OTP */
.resend {
    font-size: 14px;
    color: #777;
    margin-top: 15px;
}

.resend a {
    color: #007bff;
    font-weight: bold;
    text-decoration: none;
}

.resend a:hover {
    text-decoration: underline;
}


  </style>

  <script>
	const inputs = document.querySelectorAll(".otp-field > input");
	const button = document.querySelector(".btn");

	window.addEventListener("load", () => inputs[0].focus());
	button.setAttribute("disabled", "disabled");

	inputs[0].addEventListener("paste", function (event) {
	  event.preventDefault();
	  const pastedValue = (event.clipboardData || window.clipboardData).getData("text");
	  const otpLength = inputs.length;

	  for (let i = 0; i < otpLength; i++) {
	    if (i < pastedValue.length) {
	      inputs[i].value = pastedValue[i];
	      inputs[i].removeAttribute("disabled");
	      inputs[i].focus();
	    } else {
	      inputs[i].value = "";
	      inputs[i].focus();
	    }
	  }
	});

	inputs.forEach((input, index1) => {
	  input.addEventListener("keyup", (e) => {
	    const currentInput = input;
	    const nextInput = input.nextElementSibling;
	    const prevInput = input.previousElementSibling;

	    if (currentInput.value.length > 1) {
	      currentInput.value = "";
	      return;
	    }

	    if (nextInput && nextInput.hasAttribute("disabled") && currentInput.value !== "") {
	      nextInput.removeAttribute("disabled");
	      nextInput.focus();
	    }

	    if (e.key === "Backspace") {
	      inputs.forEach((input, index2) => {
	        if (index1 <= index2 && prevInput) {
	          input.setAttribute("disabled", true);
	          input.value = "";
	          prevInput.focus();
	        }
	      });
	    }

	    button.classList.remove("active");
	    button.setAttribute("disabled", "disabled");

	    const inputsNo = inputs.length;
	    if (!inputs[inputsNo - 1].disabled && inputs[inputsNo - 1].value !== "") {
	      button.classList.add("active");
	      button.removeAttribute("disabled");
	      return;
	    }
	  });
	});
  </script>

  <% 
  
    if (request.getMethod().equals("POST")) {
        String potp = request.getParameter("otp1") + 
                     request.getParameter("otp2") + 
                     request.getParameter("otp3") + 
                     request.getParameter("otp4") + 
                     request.getParameter("otp5") + 
                     request.getParameter("otp6");

        //String name = (String) session.getAttribute("name"); // Assuming username is stored in session
		int otp=Integer.parseInt(potp);
       System.out.println(otp);
        //System.out.println(name);
        try {
            Class.forName("com.mysql.jdbc.Driver");  
            java.sql.Connection connection = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/pphr", "root", "root");  

            String sql1 = "SELECT * FROM device WHERE otp='" + otp + "'"; 
            java.sql.Statement stmt1 = connection.createStatement();
            java.sql.ResultSet rs1 = stmt1.executeQuery(sql1);
            
            if (rs1.next()) {
  %>
                <script>
                    window.location.href = "w_main.jsp";
                </script>
  <%
            } else {
                out.println("<script>alert('Invalid OTP! Please try again.');</script>");
            }

            rs1.close();
            stmt1.close();
            connection.close();
        } catch (Exception e) {
            out.println(e);
            e.printStackTrace();
        }
    }
  %>
</body>
</html>