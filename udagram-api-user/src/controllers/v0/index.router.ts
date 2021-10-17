import {Router, Request, Response} from 'express';
import {UserRouter} from './users/routes/user.router';

const router: Router = Router();

router.get('/users/health', async (req: Request, res: Response) => {
  res.sendStatus(200);
});

router.use('/users', UserRouter);

router.get('/', async (req: Request, res: Response) => {
  res.send(`V0`);
});

export const IndexRouter: Router = router;
