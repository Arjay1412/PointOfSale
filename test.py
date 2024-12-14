from api import app

import unittest

class POSAppTests(unittest.TestCase):
    def setUp(self):

        app.config["TESTING"] = True
        self.app = app.test_client()
    
    def test_home(self):
        response = self.app.get("/")
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data.decode(),"<p>Hello, World!</p>")


if __name__ == "__main__":
    unittest.main()