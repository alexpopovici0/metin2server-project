// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
import crypto from 'crypto'

export default function handler(req, res) {
  res.status(200).json({ name: 'John Doe' })
}

export const getSha1=()=>{
  let hash1=crypto.createHash('sha1').update('123456789').digest();
  let hash2=crypto.createHash('sha1').update(hash1).digest('hex');
  return hash2;
}