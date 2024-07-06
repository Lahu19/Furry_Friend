document.addEventListener("DOMContentLoaded", function () {
    const contactForm = document.getElementById("contactForm");

    contactForm.addEventListener("submit", function (event) {
        event.preventDefault();

        // You can add further logic here to send the form data to a server or handle it in any way you want

        alert("Form submitted successfully!");
        contactForm.reset();
    });
});
