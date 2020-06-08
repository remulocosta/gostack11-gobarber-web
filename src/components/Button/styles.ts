import { shade } from 'polished';
import styled, { keyframes } from 'styled-components';

const rotate = keyframes`
  from {
    transform: rotate(0deg);
  }

  to {
    transform: rotate(360deg);
  }
`;

export const Container = styled.button`
  background: #ff9000;
  height: 56px;
  width: 100%;
  border-radius: 10px;
  border: 0;
  padding: 0 16px;
  color: #321e38;
  font-weight: 500;
  margin-top: 16px;
  transition: background-color 0.2s;
  display: flex;
  align-items: center;
  justify-content: center;

  &:hover {
    background: ${shade(0.2, '#ff9000')};
  }

  svg {
    margin-right: 8px;
    animation: ${rotate} 2s linear infinite;
  }
`;
