{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "dd375fbb-dbb3-47fe-aa08-1aad78f69fb9",
   "metadata": {},
   "source": [
    "# Topic 1 Problems – Variables & Object Model"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "893343bc-8226-427c-9fc1-7e31d395fe4c",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "5\n"
     ]
    }
   ],
   "source": [
    "# Problem 1\n",
    "x = 5\n",
    "y = x\n",
    "x = 10\n",
    "print(y)  "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "0802ce43-979b-4db4-aa39-47db23b7c21d",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1, 2, 3]\n"
     ]
    }
   ],
   "source": [
    "# Problem 2\n",
    "a = [1, 2]\n",
    "b = a\n",
    "a.append(3)\n",
    "print(b)  "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "3520834d-6aad-4860-99ec-be601ef3ea65",
   "metadata": {
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1, 2]\n"
     ]
    }
   ],
   "source": [
    "# Problem 3\n",
    "a = [1, 2]\n",
    "b = a\n",
    "a = a + [3]\n",
    "print(b)  # Expected: [1, 2]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "73304295-1ac7-4d11-a71e-4531a96f8428",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.11.5"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
