.class final Lcab/snapp/snappdialog/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappdialog/a/b;->onBindViewHolder(Lcab/snapp/snappdialog/a/b$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappdialog/a/b$a;

.field final synthetic b:I

.field final synthetic c:Lcab/snapp/snappdialog/a/b;


# direct methods
.method constructor <init>(Lcab/snapp/snappdialog/a/b;Lcab/snapp/snappdialog/a/b$a;I)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    iput-object p2, p0, Lcab/snapp/snappdialog/a/b$2;->a:Lcab/snapp/snappdialog/a/b$a;

    iput p3, p0, Lcab/snapp/snappdialog/a/b$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_2

    .line 129
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->a(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/snappdialog/a/b$2;->a:Lcab/snapp/snappdialog/a/b$a;

    invoke-static {p2}, Lcab/snapp/snappdialog/a/b$a;->a(Lcab/snapp/snappdialog/a/b$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->a(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    .line 132
    invoke-static {p2}, Lcab/snapp/snappdialog/a/b;->a(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcab/snapp/snappdialog/a/b$2;->a:Lcab/snapp/snappdialog/a/b$a;

    invoke-static {v0}, Lcab/snapp/snappdialog/a/b$a;->a(Lcab/snapp/snappdialog/a/b$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, p0, Lcab/snapp/snappdialog/a/b$2;->a:Lcab/snapp/snappdialog/a/b$a;

    .line 133
    invoke-static {v0}, Lcab/snapp/snappdialog/a/b$a;->a(Lcab/snapp/snappdialog/a/b$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->a(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/snappdialog/a/b$2;->a:Lcab/snapp/snappdialog/a/b$a;

    invoke-static {p2}, Lcab/snapp/snappdialog/a/b$a;->a(Lcab/snapp/snappdialog/a/b$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_0
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->b(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcab/snapp/snappdialog/a/b$2;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->b(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    .line 143
    invoke-static {p2}, Lcab/snapp/snappdialog/a/b;->b(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcab/snapp/snappdialog/a/b$2;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget v0, p0, Lcab/snapp/snappdialog/a/b$2;->b:I

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 142
    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 149
    :cond_1
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->b(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcab/snapp/snappdialog/a/b$2;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    :cond_2
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->a(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/snappdialog/a/b$2;->a:Lcab/snapp/snappdialog/a/b$a;

    invoke-static {p2}, Lcab/snapp/snappdialog/a/b$a;->a(Lcab/snapp/snappdialog/a/b$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 156
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->a(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/snappdialog/a/b$2;->a:Lcab/snapp/snappdialog/a/b$a;

    invoke-static {p2}, Lcab/snapp/snappdialog/a/b$a;->a(Lcab/snapp/snappdialog/a/b$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 158
    :cond_3
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->b(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcab/snapp/snappdialog/a/b$2;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 160
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->b(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p2}, Lcab/snapp/snappdialog/a/b;->b(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcab/snapp/snappdialog/a/b$2;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    :cond_4
    :goto_1
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->c(Lcab/snapp/snappdialog/a/b;)Lcab/snapp/snappdialog/b/c;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 165
    iget-object p1, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p1}, Lcab/snapp/snappdialog/a/b;->c(Lcab/snapp/snappdialog/a/b;)Lcab/snapp/snappdialog/b/c;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {p2}, Lcab/snapp/snappdialog/a/b;->b(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcab/snapp/snappdialog/a/b$2;->c:Lcab/snapp/snappdialog/a/b;

    invoke-static {v0}, Lcab/snapp/snappdialog/a/b;->a(Lcab/snapp/snappdialog/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcab/snapp/snappdialog/b/c;->onMultipleItemsSelected(Ljava/util/List;Ljava/util/List;)V

    :cond_5
    return-void
.end method
