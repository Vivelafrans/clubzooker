if (window.location.pathname === '/questionaire') {
  const rawPages = document.querySelectorAll('.page')
  const pages = [];
  let currentPageIndex = 0;
  const answers = [];
  let nextPageIndex = currentPageIndex;
  rawPages.forEach((page, index) => {
    const temp_obj = new Object;
    temp_obj.html = page;
    temp_obj.index = index;
    temp_obj.q1 = page.querySelector('.first');
    temp_obj.q2 = page.querySelector('.second');
    temp_obj.q3 = page.querySelector('.third');
    temp_obj.questions = page.querySelectorAll('.question')
    if (index == 0) {
      temp_obj.displaying = true;
    } else {
      temp_obj.displaying = false;
    }
    pages.push(temp_obj)
  })

  const selectAnswer = () => {
    console.log(nextPageIndex)
    pages[nextPageIndex].questions.forEach((question) => {
      question.addEventListener('click', (event) => {
        // SPECIFY ANSWER
        console.log(event.target.dataset.value);
        answers[nextPageIndex] = event.target.dataset.value
        pages[nextPageIndex].questions.forEach((q) => {
          q.classList.remove('active-question');
        })
        question.classList.add('active-question');
      })
    })
  }

  const sendTheForm = () => {
    document.getElementById('loading-screen').style.display = 'flex';
    document.getElementById('button1').style.display = 'none';
    const form = document.createElement('form');
    form.style.display = 'none';
    form.method = 'post';
    form.action = '/answer';

    answers.forEach((answer,index) => {
      const hiddenField = document.createElement('input');
      hiddenField.name = `question${index}`
      hiddenField.value = answer
      form.appendChild(hiddenField);
    })

    const hiddenField1 = document.createElement('input');
    hiddenField1.name = 'authenticity_token'
    hiddenField1.value = document.getElementById('auth-token').innerText
    form.appendChild(hiddenField1)

    document.body.appendChild(form);
    form.submit();
  }

  const displayNext = (event) => {
    pages.forEach((page, index) => {
      if (page.displaying == true) {
        currentPageIndex = page.index;
        page.displaying = false;
        page.html.style.display = 'none';
      } else {
        page.html.style.display = 'none'
      }
    })
    nextPageIndex += 1;
    if (nextPageIndex > 9) {
      console.log('we reached the end')
      sendTheForm();
    } else {
      pages[nextPageIndex].html.style.display = 'block'
      pages[nextPageIndex].displaying = true;
      selectAnswer();
    }
  }

  selectAnswer();
  document.querySelector('#button1').addEventListener('click', displayNext);
};
