.class public final Lcom/a/a/c/am;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/a/a/c/am;


# instance fields
.field public final email:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/a/a/c/am;

    invoke-direct {v0}, Lcom/a/a/c/am;-><init>()V

    sput-object v0, Lcom/a/a/c/am;->EMPTY:Lcom/a/a/c/am;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0, v0}, Lcom/a/a/c/am;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/a/a/c/am;->id:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/a/a/c/am;->name:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/a/a/c/am;->email:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/a/a/c/am;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/am;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/am;->email:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
