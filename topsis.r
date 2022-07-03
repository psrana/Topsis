{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "7be25345",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "execution": {
     "iopub.execute_input": "2022-07-03T14:56:24.016835Z",
     "iopub.status.busy": "2022-07-03T14:56:24.014862Z",
     "iopub.status.idle": "2022-07-03T14:56:38.577046Z",
     "shell.execute_reply": "2022-07-03T14:56:38.575164Z"
    },
    "papermill": {
     "duration": 14.57001,
     "end_time": "2022-07-03T14:56:38.579624",
     "exception": false,
     "start_time": "2022-07-03T14:56:24.009614",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "install.packages('topsis')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "96777e5f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-03T14:56:38.617876Z",
     "iopub.status.busy": "2022-07-03T14:56:38.586793Z",
     "iopub.status.idle": "2022-07-03T14:56:38.638386Z",
     "shell.execute_reply": "2022-07-03T14:56:38.636505Z"
    },
    "papermill": {
     "duration": 0.058266,
     "end_time": "2022-07-03T14:56:38.640659",
     "exception": false,
     "start_time": "2022-07-03T14:56:38.582393",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "library(topsis)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "cf428299",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-03T14:56:38.648951Z",
     "iopub.status.busy": "2022-07-03T14:56:38.647488Z",
     "iopub.status.idle": "2022-07-03T14:56:38.684568Z",
     "shell.execute_reply": "2022-07-03T14:56:38.682763Z"
    },
    "papermill": {
     "duration": 0.043654,
     "end_time": "2022-07-03T14:56:38.687033",
     "exception": false,
     "start_time": "2022-07-03T14:56:38.643379",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 5 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Model</th><th scope=col>Corr</th><th scope=col>Rseq</th><th scope=col>RMSE</th><th scope=col>Accuracy</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>M1</td><td>0.79</td><td>0.62</td><td>1.25</td><td>60.89</td></tr>\n",
       "\t<tr><td>M2</td><td>0.66</td><td>0.44</td><td>2.89</td><td>63.07</td></tr>\n",
       "\t<tr><td>M3</td><td>0.56</td><td>0.31</td><td>1.57</td><td>62.87</td></tr>\n",
       "\t<tr><td>M4</td><td>0.82</td><td>0.67</td><td>2.68</td><td>70.19</td></tr>\n",
       "\t<tr><td>M5</td><td>0.75</td><td>0.56</td><td>1.30</td><td>80.39</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 5 × 5\n",
       "\\begin{tabular}{lllll}\n",
       " Model & Corr & Rseq & RMSE & Accuracy\\\\\n",
       " <chr> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t M1 & 0.79 & 0.62 & 1.25 & 60.89\\\\\n",
       "\t M2 & 0.66 & 0.44 & 2.89 & 63.07\\\\\n",
       "\t M3 & 0.56 & 0.31 & 1.57 & 62.87\\\\\n",
       "\t M4 & 0.82 & 0.67 & 2.68 & 70.19\\\\\n",
       "\t M5 & 0.75 & 0.56 & 1.30 & 80.39\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 5 × 5\n",
       "\n",
       "| Model &lt;chr&gt; | Corr &lt;dbl&gt; | Rseq &lt;dbl&gt; | RMSE &lt;dbl&gt; | Accuracy &lt;dbl&gt; |\n",
       "|---|---|---|---|---|\n",
       "| M1 | 0.79 | 0.62 | 1.25 | 60.89 |\n",
       "| M2 | 0.66 | 0.44 | 2.89 | 63.07 |\n",
       "| M3 | 0.56 | 0.31 | 1.57 | 62.87 |\n",
       "| M4 | 0.82 | 0.67 | 2.68 | 70.19 |\n",
       "| M5 | 0.75 | 0.56 | 1.30 | 80.39 |\n",
       "\n"
      ],
      "text/plain": [
       "  Model Corr Rseq RMSE Accuracy\n",
       "1 M1    0.79 0.62 1.25 60.89   \n",
       "2 M2    0.66 0.44 2.89 63.07   \n",
       "3 M3    0.56 0.31 1.57 62.87   \n",
       "4 M4    0.82 0.67 2.68 70.19   \n",
       "5 M5    0.75 0.56 1.30 80.39   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mydata=read.csv('../input/topsis-dataset/data.csv')\n",
    "mydata"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "3d37d5c5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-03T14:56:38.698141Z",
     "iopub.status.busy": "2022-07-03T14:56:38.696601Z",
     "iopub.status.idle": "2022-07-03T14:56:38.744055Z",
     "shell.execute_reply": "2022-07-03T14:56:38.742320Z"
    },
    "papermill": {
     "duration": 0.054625,
     "end_time": "2022-07-03T14:56:38.746483",
     "exception": false,
     "start_time": "2022-07-03T14:56:38.691858",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 5 × 4 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Corr</th><th scope=col>Rseq</th><th scope=col>RMSE</th><th scope=col>Accuracy</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>0.79</td><td>0.62</td><td>1.25</td><td>60.89</td></tr>\n",
       "\t<tr><td>0.66</td><td>0.44</td><td>2.89</td><td>63.07</td></tr>\n",
       "\t<tr><td>0.56</td><td>0.31</td><td>1.57</td><td>62.87</td></tr>\n",
       "\t<tr><td>0.82</td><td>0.67</td><td>2.68</td><td>70.19</td></tr>\n",
       "\t<tr><td>0.75</td><td>0.56</td><td>1.30</td><td>80.39</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 5 × 4 of type dbl\n",
       "\\begin{tabular}{llll}\n",
       " Corr & Rseq & RMSE & Accuracy\\\\\n",
       "\\hline\n",
       "\t 0.79 & 0.62 & 1.25 & 60.89\\\\\n",
       "\t 0.66 & 0.44 & 2.89 & 63.07\\\\\n",
       "\t 0.56 & 0.31 & 1.57 & 62.87\\\\\n",
       "\t 0.82 & 0.67 & 2.68 & 70.19\\\\\n",
       "\t 0.75 & 0.56 & 1.30 & 80.39\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 5 × 4 of type dbl\n",
       "\n",
       "| Corr | Rseq | RMSE | Accuracy |\n",
       "|---|---|---|---|\n",
       "| 0.79 | 0.62 | 1.25 | 60.89 |\n",
       "| 0.66 | 0.44 | 2.89 | 63.07 |\n",
       "| 0.56 | 0.31 | 1.57 | 62.87 |\n",
       "| 0.82 | 0.67 | 2.68 | 70.19 |\n",
       "| 0.75 | 0.56 | 1.30 | 80.39 |\n",
       "\n"
      ],
      "text/plain": [
       "     Corr Rseq RMSE Accuracy\n",
       "[1,] 0.79 0.62 1.25 60.89   \n",
       "[2,] 0.66 0.44 2.89 63.07   \n",
       "[3,] 0.56 0.31 1.57 62.87   \n",
       "[4,] 0.82 0.67 2.68 70.19   \n",
       "[5,] 0.75 0.56 1.30 80.39   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "d <- as.matrix(mydata[,-1]) # -1, drop 1st column\n",
    "d"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "65d541ff",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-03T14:56:38.755861Z",
     "iopub.status.busy": "2022-07-03T14:56:38.754230Z",
     "iopub.status.idle": "2022-07-03T14:56:38.772727Z",
     "shell.execute_reply": "2022-07-03T14:56:38.771043Z"
    },
    "papermill": {
     "duration": 0.025365,
     "end_time": "2022-07-03T14:56:38.774952",
     "exception": false,
     "start_time": "2022-07-03T14:56:38.749587",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'+'</li><li>'+'</li><li>'-'</li><li>'+'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item '+'\n",
       "\\item '+'\n",
       "\\item '-'\n",
       "\\item '+'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. '+'\n",
       "2. '+'\n",
       "3. '-'\n",
       "4. '+'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"+\" \"+\" \"-\" \"+\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "i <- c(\"+\", \"+\", \"-\", \"+\")\n",
    "i"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "263cc439",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-03T14:56:38.784765Z",
     "iopub.status.busy": "2022-07-03T14:56:38.783284Z",
     "iopub.status.idle": "2022-07-03T14:56:38.801317Z",
     "shell.execute_reply": "2022-07-03T14:56:38.799605Z"
    },
    "papermill": {
     "duration": 0.025226,
     "end_time": "2022-07-03T14:56:38.803626",
     "exception": false,
     "start_time": "2022-07-03T14:56:38.778400",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>1</li><li>1</li><li>1</li><li>1</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 1\n",
       "\\item 1\n",
       "\\item 1\n",
       "\\item 1\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 1\n",
       "2. 1\n",
       "3. 1\n",
       "4. 1\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 1 1 1 1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "w <- c(1,1,1,1)\n",
    "w"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "d784f270",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-03T14:56:38.813834Z",
     "iopub.status.busy": "2022-07-03T14:56:38.812323Z",
     "iopub.status.idle": "2022-07-03T14:56:38.839500Z",
     "shell.execute_reply": "2022-07-03T14:56:38.837305Z"
    },
    "papermill": {
     "duration": 0.035238,
     "end_time": "2022-07-03T14:56:38.842551",
     "exception": false,
     "start_time": "2022-07-03T14:56:38.807313",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 5 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>alt.row</th><th scope=col>score</th><th scope=col>rank</th></tr>\n",
       "\t<tr><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>1</td><td>0.7722097</td><td>2</td></tr>\n",
       "\t<tr><td>2</td><td>0.2255988</td><td>5</td></tr>\n",
       "\t<tr><td>3</td><td>0.4388973</td><td>4</td></tr>\n",
       "\t<tr><td>4</td><td>0.5238779</td><td>3</td></tr>\n",
       "\t<tr><td>5</td><td>0.8113887</td><td>1</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 5 × 3\n",
       "\\begin{tabular}{lll}\n",
       " alt.row & score & rank\\\\\n",
       " <int> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 1 & 0.7722097 & 2\\\\\n",
       "\t 2 & 0.2255988 & 5\\\\\n",
       "\t 3 & 0.4388973 & 4\\\\\n",
       "\t 4 & 0.5238779 & 3\\\\\n",
       "\t 5 & 0.8113887 & 1\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 5 × 3\n",
       "\n",
       "| alt.row &lt;int&gt; | score &lt;dbl&gt; | rank &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| 1 | 0.7722097 | 2 |\n",
       "| 2 | 0.2255988 | 5 |\n",
       "| 3 | 0.4388973 | 4 |\n",
       "| 4 | 0.5238779 | 3 |\n",
       "| 5 | 0.8113887 | 1 |\n",
       "\n"
      ],
      "text/plain": [
       "  alt.row score     rank\n",
       "1 1       0.7722097 2   \n",
       "2 2       0.2255988 5   \n",
       "3 3       0.4388973 4   \n",
       "4 4       0.5238779 3   \n",
       "5 5       0.8113887 1   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "topsis(d, w, i)"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 18.766617,
   "end_time": "2022-07-03T14:56:38.967459",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-07-03T14:56:20.200842",
   "version": "2.3.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
