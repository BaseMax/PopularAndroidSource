.class public abstract Lcom/apptentive/android/sdk/util/IndentPrinter;
.super Ljava/lang/Object;
.source "IndentPrinter.java"


# static fields
.field public static final NULL:Lcom/apptentive/android/sdk/util/IndentPrinter;


# instance fields
.field private final indentBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/apptentive/android/sdk/util/IndentPrinter$1;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/util/IndentPrinter$1;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/util/IndentPrinter;->NULL:Lcom/apptentive/android/sdk/util/IndentPrinter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/util/IndentPrinter;->indentBuffer:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public endBlock()Lcom/apptentive/android/sdk/util/IndentPrinter;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/IndentPrinter;->indentBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v1, "  "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/Assert;->assertTrue(Z)V

    .line 34
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/IndentPrinter;->indentBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v1, "  "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/IndentPrinter;->indentBuffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/IndentPrinter;->indentBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, "  "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    return-object p0
.end method

.method public varargs print(Ljava/lang/String;[Ljava/lang/Object;)Lcom/apptentive/android/sdk/util/IndentPrinter;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/IndentPrinter;->indentBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/util/IndentPrinter;->printInternal(Ljava/lang/String;)V

    return-object p0
.end method

.method protected abstract printInternal(Ljava/lang/String;)V
.end method

.method public startBlock()Lcom/apptentive/android/sdk/util/IndentPrinter;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/IndentPrinter;->indentBuffer:Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method
