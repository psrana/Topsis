# Topsis

{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "272a4424",
   "metadata": {
    "papermill": {
     "duration": 0.003831,
     "end_time": "2022-07-03T15:26:21.408893",
     "exception": false,
     "start_time": "2022-07-03T15:26:21.405062",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## **1.1 Installing topsis library**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "37be3ae3",
   "metadata": {
    "_cell_guid": "b1a50ab9-6daf-46cb-8adb-5ec1a94107ac",
    "_uuid": "5a066e3c-bbcd-44d1-b5ca-1ebe7bc54be1",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:26:21.420032Z",
     "iopub.status.busy": "2022-07-03T15:26:21.418050Z",
     "iopub.status.idle": "2022-07-03T15:26:35.624887Z",
     "shell.execute_reply": "2022-07-03T15:26:35.622850Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 14.215829,
     "end_time": "2022-07-03T15:26:35.627514",
     "exception": false,
     "start_time": "2022-07-03T15:26:21.411685",
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
   "cell_type": "markdown",
   "id": "191b8095",
   "metadata": {
    "papermill": {
     "duration": 0.003534,
     "end_time": "2022-07-03T15:26:35.634063",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.630529",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## **1.2 Import the library**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "e4509241",
   "metadata": {
    "_cell_guid": "f1f2ef93-39e3-4c32-bb5e-1d7e671a2644",
    "_uuid": "d202d55d-794d-4414-b7a6-ec8ae7d6c92d",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:26:35.673716Z",
     "iopub.status.busy": "2022-07-03T15:26:35.641815Z",
     "iopub.status.idle": "2022-07-03T15:26:35.694979Z",
     "shell.execute_reply": "2022-07-03T15:26:35.693195Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.060987,
     "end_time": "2022-07-03T15:26:35.698058",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.637071",
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
   "cell_type": "markdown",
   "id": "9f4187d4",
   "metadata": {
    "papermill": {
     "duration": 0.002966,
     "end_time": "2022-07-03T15:26:35.703919",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.700953",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## **1.3 Read the dataset**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "1f912c49",
   "metadata": {
    "_cell_guid": "7e2d1105-9816-472c-8ba1-a340f4a5c326",
    "_uuid": "affe3387-ab90-45ea-845c-dfa84c74994a",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:26:35.713026Z",
     "iopub.status.busy": "2022-07-03T15:26:35.711481Z",
     "iopub.status.idle": "2022-07-03T15:26:35.750523Z",
     "shell.execute_reply": "2022-07-03T15:26:35.748717Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.046625,
     "end_time": "2022-07-03T15:26:35.753491",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.706866",
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
   "cell_type": "markdown",
   "id": "547bd21b",
   "metadata": {
    "papermill": {
     "duration": 0.003209,
     "end_time": "2022-07-03T15:26:35.760158",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.756949",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## **1.4 Convert the dataset to Matrix**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "e54f7a02",
   "metadata": {
    "_cell_guid": "30d53597-98b7-4aeb-9d88-375f55b9f343",
    "_uuid": "6efe8de2-e55c-4db6-ba2b-0c4e1b9d0dad",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:26:35.769726Z",
     "iopub.status.busy": "2022-07-03T15:26:35.768094Z",
     "iopub.status.idle": "2022-07-03T15:26:35.820712Z",
     "shell.execute_reply": "2022-07-03T15:26:35.818544Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.060248,
     "end_time": "2022-07-03T15:26:35.823540",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.763292",
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
   "cell_type": "markdown",
   "id": "e7303e1a",
   "metadata": {
    "papermill": {
     "duration": 0.004966,
     "end_time": "2022-07-03T15:26:35.832146",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.827180",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## **1.5 Assigning the impacts**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "62cb499b",
   "metadata": {
    "_cell_guid": "85e24367-9083-445b-a3a0-12d74a158155",
    "_uuid": "5decaca5-4ec3-4bcd-8d22-a3c19a348c8a",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:26:35.848826Z",
     "iopub.status.busy": "2022-07-03T15:26:35.847109Z",
     "iopub.status.idle": "2022-07-03T15:26:35.868570Z",
     "shell.execute_reply": "2022-07-03T15:26:35.866394Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.035857,
     "end_time": "2022-07-03T15:26:35.871365",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.835508",
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
   "cell_type": "markdown",
   "id": "192605ae",
   "metadata": {
    "papermill": {
     "duration": 0.003378,
     "end_time": "2022-07-03T15:26:35.877967",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.874589",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## **1.6 Assigning the weights**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "89129bc3",
   "metadata": {
    "_cell_guid": "824777a1-8d67-4974-aa75-dce27dc537f9",
    "_uuid": "ed08c8d4-0991-4eb3-a265-c18193630956",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:26:35.888627Z",
     "iopub.status.busy": "2022-07-03T15:26:35.887023Z",
     "iopub.status.idle": "2022-07-03T15:26:35.907723Z",
     "shell.execute_reply": "2022-07-03T15:26:35.905484Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.028882,
     "end_time": "2022-07-03T15:26:35.910695",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.881813",
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
   "cell_type": "markdown",
   "id": "ef18b4fe",
   "metadata": {
    "papermill": {
     "duration": 0.004014,
     "end_time": "2022-07-03T15:26:35.918175",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.914161",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## **1.7 Calling the topisis function**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "b11f216e",
   "metadata": {
    "_cell_guid": "e653392a-adc7-41b5-a5b3-cfd62b40d3b7",
    "_uuid": "b1b42519-6c1f-41f1-9209-ec2fff912ec6",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:26:35.929461Z",
     "iopub.status.busy": "2022-07-03T15:26:35.927815Z",
     "iopub.status.idle": "2022-07-03T15:26:35.955758Z",
     "shell.execute_reply": "2022-07-03T15:26:35.954049Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.036237,
     "end_time": "2022-07-03T15:26:35.958088",
     "exception": false,
     "start_time": "2022-07-03T15:26:35.921851",
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
   "duration": 18.507912,
   "end_time": "2022-07-03T15:26:36.084662",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-07-03T15:26:17.576750",
   "version": "2.3.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
