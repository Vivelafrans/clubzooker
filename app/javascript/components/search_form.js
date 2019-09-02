const generateClubCards = () => {
  const clubCards = []
  const rawClubCards = document.querySelectorAll(".club-cards");
  rawClubCards.forEach((card) => {
    const temp_obj = new Object;
    temp_obj.html = card;
    temp_obj.clubName = card.querySelector(".club-card-name").innerText;
    clubCards.push(temp_obj);
  })
  return clubCards;
};

const runPage = () => {
  const cards = generateClubCards();
};

export { runPage }


const inputBox = document.getElementById('chatinput');
const form = document.getElementById('form_search');

inputBox.addEventListener('keypress', function (e) {
    var key = e.which || e.keyCode;
    if (key === 13) {
      document.getElementById('printchatbox').insertAdjacentHTML("beforeend",`<p>${inputBox.value}</p>`);
      form.insertAdjacentHTML("beforeend", `<input type="hidden" name="sport[]" value=${inputBox.value}>`);
      document.getElementById("chatinput").value = "";
    }
});

const clearList = () => {
  const list = document.querySelector('#results')
  const listItems = document.querySelectorAll('#results li')
  listItems.forEach((result) => {
    list.removeChild(result);
  });
}

const addListItems = (data) => {
  const list = document.getElementById('results')
  data.forEach((item) => {
    list.insertAdjacentHTML('beforeend', `<li>${item.name}</li>`)
  })
}

const listenToThoseKeys = async () => {
  const input = document.querySelector('#chatinput');
  input.addEventListener('keyup', async (event) => {
    event.preventDefault();
    if (input.value === "") {
      clearList();
    } else {
      clearList();
      const url  = window.location.origin + '/api/v1/sports/' + input.value;
      const data = await fetch(url).then(response => response.json()).then((data) => { return data; })
      addListItems(data);
    }
  })
}


listenToThoseKeys();




















