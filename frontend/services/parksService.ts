// frontend/src/services/parksService.ts
import { API_URL } from './api';

export type FiltersType = { [key: string]: string | number | null };

export async function fetchParks(filters: FiltersType) {
  const queryParams = new URLSearchParams();
  Object.entries(filters).forEach(([key, value]) => {
    if (value != null && value !== '') {
      queryParams.append(key, String(value));
    }
  });
  const res = await fetch(`${API_URL}/parks?${queryParams.toString()}`);
  if (!res.ok) throw new Error(`Failed to fetch parks: ${res.status}`);
  return res.json();
}
