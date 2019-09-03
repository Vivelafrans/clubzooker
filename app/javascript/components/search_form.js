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
const listItem = document.querySelectorAll("#results li");
const form = document.getElementById('form_search');

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
    list.insertAdjacentHTML('beforeend', `<li class="list-group-item list-group-item-action">${item.name}</li>`)
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
      document.querySelectorAll("#results li").forEach(li => {
        li.addEventListener("click", event => {
          input.value = event.currentTarget.innerText;
          document.getElementById('printchatbox').insertAdjacentHTML("beforeend",`<span class="tag m-2 px-3">${inputBox.value}</span>`);
          form.insertAdjacentHTML("beforeend", `<input type="hidden" name="sport[]" value=${inputBox.value}>`);
          document.getElementById("chatinput").value = "";
          clearList();
        });
      });
    };
  });
};


listenToThoseKeys();





















