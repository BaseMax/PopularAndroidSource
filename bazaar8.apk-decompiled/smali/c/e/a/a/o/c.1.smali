.class public final synthetic Lc/e/a/a/o/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lc/e/a/a/o/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/e/a/a/o/c;

    invoke-direct {v0}, Lc/e/a/a/o/c;-><init>()V

    sput-object v0, Lc/e/a/a/o/c;->a:Lc/e/a/a/o/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lc/e/a/a/o/A$a;

    check-cast p2, Lc/e/a/a/o/A$a;

    invoke-static {p1, p2}, Lc/e/a/a/o/A;->b(Lc/e/a/a/o/A$a;Lc/e/a/a/o/A$a;)I

    move-result p1

    return p1
.end method
