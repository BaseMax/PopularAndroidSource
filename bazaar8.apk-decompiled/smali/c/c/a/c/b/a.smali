.class public final Lc/c/a/c/b/a;
.super Ljava/lang/Object;
.source "StringExt.kt"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Lc/c/a/c/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/c/b/a;

    invoke-direct {v0}, Lc/c/a/c/b/a;-><init>()V

    sput-object v0, Lc/c/a/c/b/a;->c:Lc/c/a/c/b/a;

    const-string v0, "(\\+[0-9]+[\\- .]*)?(\\([0-9]+\\)[\\- .]*)?([0-9][0-9\\- .]+[0-9])"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "Pattern.compile(\"\"\"(\\+[0\u2026[0-9][0-9\\- .]+[0-9])\"\"\")"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lc/c/a/c/b/a;->a:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z0-9+._%\\-+]{1,256}@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "Pattern.compile(\n       \u2026-Z0-9\\-]{0,25})+\"\"\"\n    )"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lc/c/a/c/b/a;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/c/b/a;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public final b()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/c/b/a;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method
