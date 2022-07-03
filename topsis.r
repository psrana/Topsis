{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "fd017923",
   "metadata": {
    "papermill": {
     "duration": 0.004856,
     "end_time": "2022-07-03T15:21:54.427936",
     "exception": false,
     "start_time": "2022-07-03T15:21:54.423080",
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
   "id": "4351cedb",
   "metadata": {
    "_cell_guid": "b1a50ab9-6daf-46cb-8adb-5ec1a94107ac",
    "_uuid": "5a066e3c-bbcd-44d1-b5ca-1ebe7bc54be1",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:21:54.442803Z",
     "iopub.status.busy": "2022-07-03T15:21:54.440169Z",
     "iopub.status.idle": "2022-07-03T15:22:09.136092Z",
     "shell.execute_reply": "2022-07-03T15:22:09.134077Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 14.707002,
     "end_time": "2022-07-03T15:22:09.138914",
     "exception": false,
     "start_time": "2022-07-03T15:21:54.431912",
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
   "id": "f9cad76f",
   "metadata": {
    "papermill": {
     "duration": 0.004135,
     "end_time": "2022-07-03T15:22:09.147254",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.143119",
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
   "id": "e256a21c",
   "metadata": {
    "_cell_guid": "f1f2ef93-39e3-4c32-bb5e-1d7e671a2644",
    "_uuid": "d202d55d-794d-4414-b7a6-ec8ae7d6c92d",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:22:09.188560Z",
     "iopub.status.busy": "2022-07-03T15:22:09.157248Z",
     "iopub.status.idle": "2022-07-03T15:22:09.209575Z",
     "shell.execute_reply": "2022-07-03T15:22:09.207682Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.060755,
     "end_time": "2022-07-03T15:22:09.212098",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.151343",
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
   "id": "880a244a",
   "metadata": {
    "papermill": {
     "duration": 0.004347,
     "end_time": "2022-07-03T15:22:09.220839",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.216492",
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
   "id": "650025c7",
   "metadata": {
    "_cell_guid": "7e2d1105-9816-472c-8ba1-a340f4a5c326",
    "_uuid": "affe3387-ab90-45ea-845c-dfa84c74994a",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:22:09.232582Z",
     "iopub.status.busy": "2022-07-03T15:22:09.230996Z",
     "iopub.status.idle": "2022-07-03T15:22:09.269194Z",
     "shell.execute_reply": "2022-07-03T15:22:09.267434Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.046948,
     "end_time": "2022-07-03T15:22:09.271962",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.225014",
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
   "id": "aa199858",
   "metadata": {
    "papermill": {
     "duration": 0.004417,
     "end_time": "2022-07-03T15:22:09.281132",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.276715",
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
   "id": "0d1b3837",
   "metadata": {
    "_cell_guid": "30d53597-98b7-4aeb-9d88-375f55b9f343",
    "_uuid": "6efe8de2-e55c-4db6-ba2b-0c4e1b9d0dad",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:22:09.293271Z",
     "iopub.status.busy": "2022-07-03T15:22:09.291676Z",
     "iopub.status.idle": "2022-07-03T15:22:09.341938Z",
     "shell.execute_reply": "2022-07-03T15:22:09.340200Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.058839,
     "end_time": "2022-07-03T15:22:09.344405",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.285566",
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
   "id": "9a6711b6",
   "metadata": {
    "papermill": {
     "duration": 0.004826,
     "end_time": "2022-07-03T15:22:09.353726",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.348900",
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
   "id": "9d633465",
   "metadata": {
    "_cell_guid": "85e24367-9083-445b-a3a0-12d74a158155",
    "_uuid": "5decaca5-4ec3-4bcd-8d22-a3c19a348c8a",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:22:09.373827Z",
     "iopub.status.busy": "2022-07-03T15:22:09.372137Z",
     "iopub.status.idle": "2022-07-03T15:22:09.393888Z",
     "shell.execute_reply": "2022-07-03T15:22:09.391592Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.038721,
     "end_time": "2022-07-03T15:22:09.396952",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.358231",
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
   "id": "b9c3841d",
   "metadata": {
    "papermill": {
     "duration": 0.004678,
     "end_time": "2022-07-03T15:22:09.406207",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.401529",
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
   "id": "9dd942e6",
   "metadata": {
    "_cell_guid": "824777a1-8d67-4974-aa75-dce27dc537f9",
    "_uuid": "ed08c8d4-0991-4eb3-a265-c18193630956",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:22:09.418916Z",
     "iopub.status.busy": "2022-07-03T15:22:09.417315Z",
     "iopub.status.idle": "2022-07-03T15:22:09.438479Z",
     "shell.execute_reply": "2022-07-03T15:22:09.436199Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.030738,
     "end_time": "2022-07-03T15:22:09.441624",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.410886",
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
   "id": "a6d941a4",
   "metadata": {
    "papermill": {
     "duration": 0.004864,
     "end_time": "2022-07-03T15:22:09.451228",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.446364",
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
   "id": "04acb8a3",
   "metadata": {
    "_cell_guid": "e653392a-adc7-41b5-a5b3-cfd62b40d3b7",
    "_uuid": "b1b42519-6c1f-41f1-9209-ec2fff912ec6",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-07-03T15:22:09.464396Z",
     "iopub.status.busy": "2022-07-03T15:22:09.462812Z",
     "iopub.status.idle": "2022-07-03T15:22:09.492278Z",
     "shell.execute_reply": "2022-07-03T15:22:09.490293Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.039427,
     "end_time": "2022-07-03T15:22:09.495523",
     "exception": false,
     "start_time": "2022-07-03T15:22:09.456096",
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
   "duration": 18.62985,
   "end_time": "2022-07-03T15:22:09.621822",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-07-03T15:21:50.991972",
   "version": "2.3.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
