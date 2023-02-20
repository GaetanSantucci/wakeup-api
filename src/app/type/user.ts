export type CustomerType = {
  id: string;
  email: string;
  password: string;
  lastname: string;
  firstname: string;
  address: Address;
  phone: string;
  role: string;
  newsletter_optin?: boolean;
}

type Address = {
  label: string;
  complement?: string;
  city: string;
  zipcode: number;
  lat?: number;
  lon?: number;
}