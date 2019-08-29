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



