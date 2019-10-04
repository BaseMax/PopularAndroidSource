.class public Lb/s/a/b$c;
.super Lb/r/E;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/s/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field public static final c:Lb/r/F$b;


# instance fields
.field public d:Lb/f/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/j<",
            "Lb/s/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/s/a/c;

    invoke-direct {v0}, Lb/s/a/c;-><init>()V

    sput-object v0, Lb/s/a/b$c;->c:Lb/r/F$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/r/E;-><init>()V

    .line 2
    new-instance v0, Lb/f/j;

    invoke-direct {v0}, Lb/f/j;-><init>()V

    iput-object v0, p0, Lb/s/a/b$c;->d:Lb/f/j;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lb/s/a/b$c;->e:Z

    return-void
.end method

.method public static a(Lb/r/H;)Lb/s/a/b$c;
    .locals 2

    .line 1
    new-instance v0, Lb/r/F;

    sget-object v1, Lb/s/a/b$c;->c:Lb/r/F$b;

    invoke-direct {v0, p0, v1}, Lb/r/F;-><init>(Lb/r/H;Lb/r/F$b;)V

    const-class p0, Lb/s/a/b$c;

    invoke-virtual {v0, p0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p0

    check-cast p0, Lb/s/a/b$c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lb/s/a/b$c;->d:Lb/f/j;

    invoke-virtual {v0}, Lb/f/j;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lb/s/a/b$c;->d:Lb/f/j;

    invoke-virtual {v2}, Lb/f/j;->c()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lb/s/a/b$c;->d:Lb/f/j;

    invoke-virtual {v2, v1}, Lb/f/j;->f(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/s/a/b$a;

    .line 7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lb/s/a/b$c;->d:Lb/f/j;

    invoke-virtual {p1, v1}, Lb/f/j;->c(I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    .line 8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/s/a/b$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v0, p2, p3, p4}, Lb/s/a/b$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-super {p0}, Lb/r/E;->d()V

    .line 2
    iget-object v0, p0, Lb/s/a/b$c;->d:Lb/f/j;

    invoke-virtual {v0}, Lb/f/j;->c()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/s/a/b$c;->d:Lb/f/j;

    invoke-virtual {v0}, Lb/f/j;->a()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lb/s/a/b$c;->d:Lb/f/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/f/j;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/s/a/b$a;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lb/s/a/b$a;->a(Z)Lb/s/b/a;

    const/4 v0, 0x0

    throw v0
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/s/a/b$c;->d:Lb/f/j;

    invoke-virtual {v0}, Lb/f/j;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lb/s/a/b$c;->d:Lb/f/j;

    invoke-virtual {v2, v1}, Lb/f/j;->f(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/s/a/b$a;

    .line 3
    invoke-virtual {v2}, Lb/s/a/b$a;->f()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
