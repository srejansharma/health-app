import { createApp } from "./app/app";
import dotenv from "dotenv";

dotenv.config();

const app = createApp();
const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`🚀 Backend running on port ${PORT}`);
});
