import express from "express";
import cors from "cors";
import healthRoutes from "../routes/health.routes";

export const createApp = () => {
  const app = express();

  app.use(cors());
  app.use(express.json());

  app.use("/health", healthRoutes);

  return app;
};
