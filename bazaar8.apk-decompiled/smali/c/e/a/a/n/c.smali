.class public final synthetic Lc/e/a/a/n/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lc/e/a/a/o/x;


# static fields
.field public static final synthetic a:Lc/e/a/a/n/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/e/a/a/n/c;

    invoke-direct {v0}, Lc/e/a/a/n/c;-><init>()V

    sput-object v0, Lc/e/a/a/n/c;->a:Lc/e/a/a/n/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lc/e/a/a/n/u;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
