import Token from './Token';
import TokenStorage from './TokenStorage';

//! USER Class to handle auth, login, logout, LocalStorage and Token

class User {

    //! axios post request to login, get user data, and store token and user to LocalStorage
    login(data) {
        axios.post('/api/auth/login', data)
            .then(res => this.storeData(res))
            .catch(error => console.log(error.response.data))
    }

    //! store user and token to LocalStorage
    storeData(res) {
        const access_token = res.data.access_token;
        const username = res.data.user;

        if (Token.isValid(access_token)) {
            TokenStorage.store(username, access_token);
            window.location = '/home';
        }
    }

    //! check token is true and valid, payload.iss is from the same server
    hasToken() {
        const storedToken = TokenStorage.getToken();
        if (storedToken) {
            return Token.isValid(storedToken) ? true : false;
        }
        return false;
    }

    //! check if user is logged in
    loggedIn() {
        return this.hasToken();
    }

    //! User to logout
    logout() {
        TokenStorage.clear();
        window.location = '/';
    }

    //! get user name
    name() {
        if (this.loggedIn()) {
            return TokenStorage.getUser();
        }
    }

    //! get user id from decoded JWT payload (in sub property)
    id() {
        if (this.loggedIn()) {
            const payload = Token.payload(TokenStorage.getToken());
            return payload.sub;
        }
    }
}

export default User = new User();
