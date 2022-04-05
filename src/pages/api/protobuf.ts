// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
import type { NextApiRequest, NextApiResponse } from 'next'
import { User } from "@protobuf/user"

export default async (req: NextApiRequest, res: NextApiResponse) => {
    const asProtobuf = User.encode({ name: 'Joe', age: 27 }).finish();

    const decoded = User.decode(asProtobuf);

    res.status(200).json(decoded);
}

