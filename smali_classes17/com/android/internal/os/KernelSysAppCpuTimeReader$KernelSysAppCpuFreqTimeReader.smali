.class public Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;
.super Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.source "KernelSysAppCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSysAppCpuTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelSysAppCpuFreqTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelSysAppCpuTimeReader<",
        "[J>;"
    }
.end annotation


# instance fields
.field private mBuffer:[J

.field private mCpuFreqs:[J

.field private mCurTimes:[J

.field private mDeltaTimes:[J

.field private mFreqCount:I

.field private mLastTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-static {}, Lcom/android/internal/os/UidAppKernelProcStringReader;->getSysAppFreqTimeReaderInstance()Lcom/android/internal/os/UidAppKernelProcStringReader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/KernelSysAppCpuTimeReader;-><init>(Lcom/android/internal/os/UidAppKernelProcStringReader;Z)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    return-void
.end method

.method private checkPrecondition(Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCpuFreqs:[J

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->readFreqs(Ljava/lang/String;)[J

    move-result-object v2

    if-eqz v2, :cond_2

    move v0, v3

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method private copyToCurTimes()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCurTimes:[J

    iget-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mBuffer:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private extractClusterInfoFromProcFileFreqs()Landroid/util/IntArray;
    .locals 8

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    if-ge v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, v3, v4

    aget-wide v6, v3, v2

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    const/4 v1, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private readFreqs(Ljava/lang/String;)[J
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed freq line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    array-length v0, v1

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    iget v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCpuFreqs:[J

    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCurTimes:[J

    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mDeltaTimes:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mBuffer:[J

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCpuFreqs:[J

    return-object v0
.end method


# virtual methods
.method readDeltaImpl(Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mReader:Lcom/android/internal/os/UidAppKernelProcStringReader;

    iget-boolean v3, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mThrottle:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/internal/os/UidAppKernelProcStringReader;->open(Z)Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;

    move-result-object v3

    :try_start_0
    invoke-direct {v1, v3}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->checkPrecondition(Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    :cond_0
    return-void

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v0

    move-object v5, v0

    if-eqz v0, :cond_9

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mBuffer:[J

    invoke-static {v8, v9}, Lcom/android/internal/os/UidAppKernelProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v8

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mBuffer:[J

    array-length v9, v9

    if-eq v8, v9, :cond_2

    iget-object v7, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    if-nez v8, :cond_3

    iget v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    new-array v9, v9, [J

    move-object v8, v9

    iget-object v9, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mLastTimes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->copyToCurTimes()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v11, v7

    :goto_1
    iget v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    if-ge v11, v12, :cond_6

    iget-object v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mDeltaTimes:[J

    iget-object v13, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCurTimes:[J

    aget-wide v13, v13, v11

    aget-wide v15, v8, v11

    sub-long/2addr v13, v15

    aput-wide v13, v12, v11

    iget-object v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mDeltaTimes:[J

    aget-wide v12, v12, v11

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_4

    iget-object v12, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mTag:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative delta from freq time proc: "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mDeltaTimes:[J

    move-object/from16 v17, v8

    aget-wide v7, v4, v11

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move v10, v4

    goto :goto_2

    :cond_4
    move-object/from16 v17, v8

    :goto_2
    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mDeltaTimes:[J

    aget-wide v7, v4, v11

    cmp-long v4, v7, v14

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    or-int/2addr v9, v4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v17

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v17, v8

    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mCurTimes:[J

    iget v7, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mFreqCount:I

    move-object/from16 v8, v17

    const/4 v11, 0x0

    invoke-static {v4, v11, v8, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_8

    iget-object v4, v1, Lcom/android/internal/os/KernelSysAppCpuTimeReader$KernelSysAppCpuFreqTimeReader;->mDeltaTimes:[J

    invoke-interface {v2, v6, v4}, Lcom/android/internal/os/KernelSysAppCpuTimeReader$Callback;->onAppCpuTime(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_7
    move-object/from16 v8, v17

    :cond_8
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    if-eqz v3, :cond_a

    :try_start_3
    invoke-virtual {v3}, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    throw v5
.end method
