import Menu from './Menu.tsx';
import Footer from './Footer.tsx';
import Header from './Header.tsx';

function Layout(props: any) {
  return (
    <div id="page-wrapper">
      <Header />
      <Menu />
      {props.children}
      <Footer />
    </div>
  );
}

export default Layout;
