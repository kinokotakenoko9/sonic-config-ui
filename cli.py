import click

@click.command()
def apptest():
    click.echo("apptest")


def register(cli):
    cli.add_command(apptest)