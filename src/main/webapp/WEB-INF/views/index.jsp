<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html> 
<html> 
<head>
  <title>기본페이지</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  
<style type="text/css">

    html, body {
      position: relative;
      height: 100%;
    }

    section {
      height: 100%;
      width: 100%;
    }

    section:nth-child(odd) {
      background-color: #f8f9fa;
    }

    section:nth-child(even) {
      background-color: #e9ecef;
    }

    img {
      height: 100% !important;
      width: 100%;
    }
  </style>

</head>
 
<!-- <div class="container mt-2">

    <img src="/images/jeans.jpg" alt="Jeans" class="img-thumbnail">
    
</div> -->
<body>
  <!-- Sections -->
  <section id="section1"><img src="/images/index0.jpg" alt="Index" class="img-thumbnail"></section>
  <section id="section2"><img src="/images/index1.jpg" alt="Index" class="img-thumbnail"></section>
  <section id="section3"><img src="/images/index2.jpg" alt="Index" class="img-thumbnail"></section>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

  <!-- Scroll Script -->
  <script>
    document.addEventListener("DOMContentLoaded", function() {
      const sections = document.querySelectorAll("section");

      let currentSection = 0;

      // Change section on scroll
      document.addEventListener("wheel", function(event) {
        if (event.deltaY > 0) {
          // Scrolling down
          currentSection = Math.min(currentSection + 1, sections.length - 1);
        } else {
          // Scrolling up
          currentSection = Math.max(currentSection - 1, 0);
        }
        
        console.log(sections[currentSection]);
        scrollToSection(currentSection);
      });

      // Scroll to a specific section
      function scrollToSection(sectionIndex) {
        const targetSection = sections[sectionIndex];
        const targetTop = targetSection.getBoundingClientRect().top;
        
        window.scrollBy({
          top: targetTop,
          behavior: 'smooth'
        });

        updateURL(sectionIndex);
      }

      // Update URL using history.pushState
      function updateURL(sectionIndex) {
        const stateObj = { section: `section${sectionIndex + 1}` };
        history.pushState(null, null, '#section' + (sectionIndex + 1).toString() )
        // console.log(stateObj);
      }
    });
  </script>

</body>
</html>