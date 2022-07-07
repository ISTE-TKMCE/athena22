let tableContent = [
    {
        case: 1,
        imageSrc: 'img/1_pUEZd8z__1p-7ICIO1NZFA.png',
        errorName: 'typical error',
        errorDescription: 'this is a common error'

    },

    {
        case: 2,
        imageSrc: 'source is displayable',
        errorName: 'non typical error',
        errorDescription: 'this is an uncommon error'

    },

    {
        case: 3,
        imageSrc: 'source is displayable',
        errorName: 'general error',
        errorDescription: 'this is a general error'

    },

];



const techIssue = () => {

    errorList = tableContent.reduce((errors, presentError) => {

        errors += ` <tr>
                  <th scope="row">${presentError.case}</th>
                  <td><img src = '${presentError.imageSrc} ></td>
                  <td>${presentError.errorName}</td>
                  <td>${presentError.errorDescription}</td>    </tr>       
     `;

        return errors;


    }, '');

    errorElement = document.getElementById('technical-head');
    errorElement.innerHTML = errorList;
}

techIssue();