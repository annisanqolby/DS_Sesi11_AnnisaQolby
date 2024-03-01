const { $ } = require('@wdio/globals')
const Page = require('./page');

const element = {
    fieldUsername: $('#user-name'),
    fieldPassword: $('#password'),
    buttonLogin: $('#login-button'),
    errorLockedOutUser: (dynamicMessage) => $(`//h3[text()="${dynamicMessage}"]`),
    errornoUser: (dynamicMessage) => $(`//h3[text()="${dynamicMessage}"]`)
}


class LoginPage extends Page {
    async login (username) {
    await (await element.fieldUsername).waitForDisplayed({ timeout: 2500});
    await element.fieldUsername.setValue(username);
    await element.fieldPassword.setValue(process.env.PASSWORD_SAUCEDEMO);
    await element.buttonLogin.click();
    }

    async validateLockedOutUserError (dynamicMessage) {
        await element.errorLockedOutUser(dynamicMessage).waitForDisplayed({ timeout: 2500 });
        await expect(element.errorLockedOutUser(dynamicMessage)).toBeDisplayed()
    }

    async validatenoUsererror (dynamicMessage){
        await element.errornoUser(dynamicMessage).waitForDisplayed({ timeout: 2500});
        await expect(element.errornoUser(dynamicMessage)).toBeDisplayed()
    }
    open () {
        return super.open('/');
    }
}

module.exports = new LoginPage();
