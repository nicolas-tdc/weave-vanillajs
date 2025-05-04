function fetchData() {
    // Example fetch request
    fetch("http://localhost:8080/api")
        .then(response => {
            if (!response.ok) {
                throw new Error("Network response was not ok");
            }
            return response.json();
        })
        .then(data => {
            document.getElementById("output").textContent = data.message;
        })
        .catch(error => {
            console.error("Fetch error:", error);
        });
}
